
    function BindCountry() {
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "SignUp.aspx/CountryBind",
            dataType: "json",
            success: function (data) {
                var v = '';
                $.each(data.d, function (i, v1) {
                    v += "<option value='" + v1.CountryId + "'>" + v1.CountryName + "</option>";

                });
                $("#ddlcountry").append(v);
                $("#ddlPartCountry").append(v);
            },
            error: function (result) {
                //alert("Error");
            }
        });
    }


$(document).ready(function () {
    BindCountry();
    var v1 = "<option>Select</option>";
    $("#ddlcountry").html(v1);
    $("#ddlstate").html(v1);
    $("#ddlcity").html(v1);

    //partner Country, State and City Bind
    $("#ddlPartCountry").html(v1);
    //******* code for state bind with countryid…………..

    $("#ddlcountry").change(function () {
        var v1 = "<option>Select</option>";
        $("#ddlstate").html(v1);
        $("#ddlcity").html(v1);
        var countryid = $(this).val();
        $("#hfCountry").val($(this).val());
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "SignUp.aspx/StateBind",
            data: "{'CountryId':'" + countryid + "'}",
            dataType: "json",
            success: function (data) {
                var v = '';
                $.each(data.d, function (i, v1) {
                    v += "<option value='" + v1.StateId + "'>" + v1.StateName + "</option>";
                });
                $("#ddlstate").append(v);
            },
            error: function (result) {
                //alert("Error");
            }

        });
    });

    //******* code for city bind with stated……………………

    $("#ddlstate").change(function () {
        var v1 = "<option>Select</option>";
        $("#ddlcity").html(v1);
        var stateid = $(this).val();
        $("#hfState").val($(this).val());
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "SignUp.aspx/CityBind",
            data: "{'StateId':'" + stateid + "'}",
            dataType: "json",
            success: function (data) {
                var v = '';

                for (var i = 0; i < data.d.length; i++) {
                    v += "<option value='" + data.d[i].CityId + "'>" + data.d[i].CityName + "</option>";
                }
                //$.each(data.d, function (i, v1)
                //{
                //    v += "<option value='" + v1.CityId + "'>" + v1.CityName + "</option>";
                //});

                $("#ddlcity").append(v);
            },
            error: function (result) {
                //alert("Error");
            }

        });
    });

    $('#ddlcity').bind('change', function () {
        //    $('#hiddenfield_id').val($(this).val());
        $("#hfCity").val($(this).val());
    });

    //****** Partner State bind with CountryId  hfPartCountry ddlPartStates hfPartState ddlPartCity hfPartCity ******
    $("#ddlPartCountry").change(function () {
        var v1 = "<option>Select</option>";
        $("#ddlPartStates").html(v1);
        $("#ddlPartCity").html(v1);
        var countryid = $(this).val();
        $("#hfPartCountry").val($(this).val());
        //$("#hfCountry").val($(this).val());
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "SignUp.aspx/StateBind",
            data: "{'CountryId':'" + countryid + "'}",
            dataType: "json",
            success: function (data) {
                var v = '';
                $.each(data.d, function (i, v1) {
                    v += "<option value='" + v1.StateId + "'>" + v1.StateName + "</option>";
                });
                $("#ddlPartStates").append(v);
            },
            error: function (result) {
                //alert("Error");
            }
        });
    });

    $("#ddlPartStates").change(function () {
        var v1 = "<option>Select</option>";
        $("#ddlPartCity").html(v1);
        var stateid = $(this).val();
        $("#hfPartState").val($(this).val());
        $.ajax({
            type: "POST",
            contentType: "application/json; charset=utf-8",
            url: "SignUp.aspx/CityBind",
            data: "{'StateId': '" + stateid + "'}",
            dataType: "json",
            success: function (data) {
                var v = '';
                for (var i = 0; i < data.d.length; i++) {
                    v += "<option value='" + data.d[i].CityId + "'>" + data.d[i].CityName + "</option>";

                }
                $("#ddlPartCity").append(v);
            },
            error: function (result) {
                //alert("Error");
            }
        });
    });

    $('#ddlPartCity').bind('change', function () {
        $("#hfPartCity").val($(this).val());
    });
});


function clearfields() {
    document.getElementById("txtEmail").value = "";
    document.getElementById("txtPassword").value = "";
    document.getElementById("txtContactNo").value = "";
    document.getElementById("txtFirstName").value = "";
    document.getElementById("txtLastName").value = "";
    document.getElementById("txtCommunity").value = "";
    document.getElementById("txtEducationField").value = "";
    document.getElementById("txtDesignation").value = "";
    document.getElementById("txtHeight").value = "";
    document.getElementById("txtDescribeYourself").value = "";
    document.getElementById("txtDob").value = "";
    document.getElementById("create_profile").selectedIndex = 0;
    document.getElementById("gender").selectedIndex = 0;
    document.getElementById("religion").selectedIndex = 0;
    document.getElementById("mother_tougne").selectedIndex = 0;
    document.getElementById("ddlcountry").selectedIndex = 0;
   
    document.getElementById("maritl_status").selectedIndex = 0;
    document.getElementById("education_level").selectedIndex = 0;
    document.getElementById("work_with").selectedIndex = 0;
    document.getElementById("annual_income").selectedIndex = 0;
    document.getElementById("RblSmoke").selectedIndex = 0;
    document.getElementById("dite").selectedIndex = 0;
    window.location = "SignUp.aspx";
}

function clearPartFileds() {
    document.getElementById("txtPartCommunity").value = "";
    document.getElementById("txtPartEducationField").value = "";
    document.getElementById("txtPartHeight").value = "";
    document.getElementById("ddlpartGender").selectedIndex = 0;
    document.getElementById("ddlPartReligion").selectedIndex = 0;
    document.getElementById("ddlPartMotherTongue").selectedIndex = 0;
    document.getElementById("ddlPartCountry").selectedIndex = 0;
    document.getElementById("ddlPartStates").selectedIndex = 0;
    document.getElementById("ddlPartCity").selectedIndex = 0;
    document.getElementById("ddlPartMaritalStatus").selectedIndex = 0;
    document.getElementById("ddlPartEducatoinLevel").selectedIndex = 0;
    document.getElementById("ddlPartDiet").selectedIndex = 0;

    document.location = "SignUp.aspx";
}