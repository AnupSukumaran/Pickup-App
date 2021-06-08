//
//  Constants.swift
//  Loqqat
//
//  Created by Sukumar Anup Sukumaran on 20/03/19.
//  Copyright © 2019 Qaptive_Technologies. All rights reserved.
//

import UIKit

struct Constants {
    
//    struct ApiBase {
//        static let APIScheme = Environment.api_scheme
//        static let APIHost = Environment.api_host
//        static let APIPath = Environment.api_path
//        static let Map_APIKey = Environment.apiKey
//     
//    }
    
    struct ViewKeys {
        
        static let menuVC = "MenuViewController"
        static let homeVC = "HomeViewController"
//        //cell keys
//        static let countryCell = "CountryCell"
//        static let studentCell = "StudentCell"
//        static let homeCell = "HomeTableViewCell"
//
//        //storyBor
//        static let homeVC = "HomeViewController"
//
//        static let loginVC = "LoginViewController"
//        static let otpVC = "OTPViewController"
//        static let mapVC  = "MapViewController"
//        static let timeVC  = "TimeAndContactViewController"
//        static let setBoardVC = "SetBoardViewController"
        
    }
    
//    struct Keys {
//        static let notificCnt = "NotificCount"
//        static let appIndex = "Appindex"
//        static let appleID = "appleID"
//        static let stopsList = "stopsList"
//        static let my_stops = "my_stops"
//        static let stop_detail = "stop_detail"
//        static let my_pick_id = "my_pick_id"
//        static let my_drop_id = "my_drop_id"
//        static let emp_id = "emp_id"
//        static let company_id = "company_id"
//        static let manage_route_based_on_stops = "manage_route_based_on_stops"
//        static let db_id = "db_id"
//        static let country_code = "country_code"
//        static let register_no = "register_no"
//        static let savedFCMToken = "savedFCMToken"
//        static let app_version = "app_version"
//        static let versionKey = "versionKey"
//        static let notification_flag = "notification_flag"
//        static let permission = "permission"
//        static let subject = "subject"
//        static let deviceInfo = "deviceInfo"
//        static let googleMapAPIKey = "AIzaSyCucBX-zzVBw1bDxoJSj0549KwCP2IUa8o"
//        static let userSession = "userSession"
//        static let authID = "authID"
//        static let mobile = "mobile"
//        static let parentName = "parentName"
//        static let data = "data"
//        static let message = "message"
//        static let id = "id"
//
//        static let BANKNAME = "BANKNAME"
//        static let BANKTXNID = "BANKTXNID"
//        static let MID = "MID"
//        static let RESPMSG = "RESPMSG"
//        static let CURRENCY = "CURRENCY"
//        static let RESPCODE = "RESPCODE"
//        static let PAYMENTMODE = "PAYMENTMODE"
//        static let STATUS = "STATUS"
//        static let GATEWAYNAME = "GATEWAYNAME"
//        static let TXNDATE = "TXNDATE"
//        static let CHECKSUMHASH = "CHECKSUMHASH"
//        static let TXNID = "TXNID"
//        static let TXNAMOUNT = "TXNAMOUNT"
//        static let ORDERID = "ORDERID"
//
//
//        static let name = "name"
//        static let code = "code"
//        static let paid_amount = "paid_amount"
//        static let amount_due = "amount_due"
//        static let orderId = "orderId"
//        static let txnToken = "txnToken"
//        static let merchandID = "MerchandID"
//        static let environment = "environment"
//        static let callback = "callback"
//        static let fee_type = "fee_type"
//        static let payment_date = "payment_date"
//        static let payment_mode = "payment_mode"
//        static let order_id = "order_id"
//        static let transaction_id = "transaction_id"
//        static let month = "month"
//        static let payment_received = "payment_received"
//        static let payment_status = "payment_status"
//        static let history = "history"
//        static let flag = "flag"
//        static let status = "status"
//        static let countries = "countries"
//        static let students = "students"
//        static let student_id = "student_id"
//        static let timeline_date = "timeline_date"
//        static let profile_pic = "profile_pic"
//        static let studentClass = "class"
//        static let school = "school"
//        static let gender = "gender"
//        static let pick = "pick"
//        static let drop = "drop"
//        static let latitude = "latitude"
//        static let longitude = "longitude"
//        static let location = "location"
//        static let ride_insurance = "ride_insurance"
//        static let division = "division"
//        static let success = "200"
//        static let sessionError = "403"
//        static let failed = "404"
//        static let SUCCESS = "SUCCESS"
//        static let FAIL = "FAIL"
//        static let ls = "ls"
//        static let parent_id = "parent_id"
//        static let home = "home"
//        static let cancel = "cancel"
//        static let bus = "bus"
//        static let parentInfo = "parentInfo"
//        static let auth_token = "auth_token"
//        static let parent_name = "parent_name"
//        static let device_info = "device_info"
//        static let otp = "otp"
//        static let timeline = "timeline"
//        static let time = "time"
//        static let trip_type = "trip_type"
//        static let event = "event"
//        static let location_name = "location_name"
//        static let picked = "Pick"
//        static let dropped = "Drop"
//        static let contact_details = "contact_details"
//        static let conductor_name = "conductor_name"
//        static let conductor_contact = "conductor_contact"
//        static let school_contact = "school_contact"
//        static let bus_number = "bus_number"
//        static let boarding_point = "boarding_point"
//        static let drop_point = "drop_point"
//        static let locations = "locations"
//        static let encoded_polyline = "encoded_polyline"
//        static let pending_waypoints = "pending_waypoints"
//        static let current_loc = "current_loc"
//        static let boarding_loc = "boarding_loc"
//        static let dropping_loc = "dropping_loc"
//        static let veh_angle = "veh_angle"
//        static let notification_list = "notification_list"
//        static let title = "title"
//        static let themeKey = "themekey"
//        static let device_token = "device_token"
//        static let type = "type"
//        static let device_OS = "ios"
//        static let en = "en"
//        static let ar = "ar"
//        static let lastLongitude = "lastLongitude"
//        static let lastLatitude = "lastLatitude"
//        static let lastZoom = "lastZoom"
//        static let lastBearing = "lastBearing"
//        static let lastViewingAngle = "lastViewingAngle"
//        static let notificCount = "notificCount"
//        static let userPhoneNum = "userPhoneNum"
//        static let os_type = "os_type"
//        static let app_type = "app_type"
//        static let version_info = "version_info"
//        static let version_code = "version_code"
//        static let version_name = "version_name"
//        static let major = "major"
//        static let calledVersionAPI = "calledVersionAPI"
//        static let school_id = "school_id"
//        static let paid_by = "paid_by"
//        static let amount = "amount"
//        static let config_Info = "config_Info"
//        static let technical_Support_Email = "technical_Support_Email"
//        static let ETA_Call_Speed_Mtr_Per_Sec = "ETA_Call_Speed_Mtr_Per_Sec"
//        static let google_Map_Refresh_Time = "google_Map_Refresh_Time"
//        static let technical_Support_Contact = "technical_Support_Contact"
//        static let google_Map_Key_Android = "google_Map_Key_Android"
//        static let google_Map_Key_IOS = "google_Map_Key_IOS"
//        static let imei_number = "imei_number"
//        static let ETA = "ETA"
//        static let trip_status = "trip_status"
//        static let email = "email"
//        static let parentEmail = "parentEmail"
//        static let mobile_number = "mobile_number"
//        static let student_name = "student_name"
//        static let _class = "class"
//        static let trip_stoppages = "trip_stoppages"
//        static let is_student = "is_student"
//        static let covered = "covered"
//        static let sequence = "sequence"
//        //MARK: VARIABLES USED TO SHOW STOPS BUTTON AND DRAW ROUTES ON MAPVIEW
//        static let is_route_available = "is_route_available"
//        static let show_stoppage_details = "show_stoppage_details"
//        static let trip_covered_path = "trip_covered_path"
//
//        static let student_status = "student_status"
//        static let bus_name = "bus_name"
//        static let conductor_phone = "conductor_phone"
//    }
//
//    struct Values {
//        static let singleMarkerZoomlevel: Float = 16
//        static let multipleMarkersZoomlevel: Float = 16
//        static let resendSec: TimeInterval = 30
//        static let os_type = "Ios"
//        static let app_type = "Parent"
//        static let device_info = UIDevice.modelName
//        static let noDataimgSize: CGFloat = 80
//        static let noStudDataimgSize: CGFloat = 150
//
//        static let pinLength = 6
//        static let techNumber = "+91 484 4855790"
//        static let strokeThickness: CGFloat = 6
//        //MARK: Changed the color of the route
//        static let routeColor = #colorLiteral(red: 0.2823529412, green: 0.5921568627, blue: 0.9921568627, alpha: 1)
//        static let defaultEmail = "info@qaptive.co.in"
//        static let defaultKMPSEC: Double = 60
//        static let defaultGoogle_Map_Refresh_Time: Double = 30
//
//        #if GOSCHOOL
//            static let privacyPolityURL = "https://goscool.com/privacy-policy/"
//            static let faqURL = "https://goscool.com/faq/"
//            static let pricingURL = "https://goscool.com/terms-of-service#payment"
//            static let refundAndCanURL = "https://goscool.com/terms-of-service#refund"
//            static let tAndcURL = "https://goscool.com/terms-of-service/"
//            static let contactUs = "https://goscool.com/contact/"
//            static let aboutUs = "https://goscool.com/about/"
//
//        #elseif LOQQAT
//            static let privacyPolityURL = "https://www.loqqat.com/policy"
//            static let faqURL = "https://www.loqqat.com/faqs"
//        #elseif DIGITAL_EYE
//            static let privacyPolityURL = "https://www.digitaleye1.com/policy"
//            static let faqURL = "https://www.digitaleye1.com/faqs"
//        #endif
//    }
//
//    struct  Texts {
//        static let gvar = GVars()
//        static let defaultErrorMsg = "Something went wrong!!.Please try again.".localized
//        static let sessionExpErrorMsg = "Your session has expired due to another device has logged into this account. Please log in again to continue.".localized
//        static let mobileNumEmpty = "Please enter your mobile Number"
//        static let ok = "OK"
//        static let message = "Message"
//        static let oops = "Oops..!!"
//        static let otpMessage = "OTP Resend Successfully"
//
//        //Menu Title
//        static let home = "At Home"
//        static let inBus = "In Bus"
//        static let school = "At School"
//        static let absent = "Absent"
//        static let picked = "Picked"
//        static let reached = "Reached"
//
//        static let HOME = "HOME"
//        static let IN_BUS = "IN BUS"
//        static let SCHOOL = "AT SCHOOL"
//        static let ABSENT = "ABSENT"
//        static let STAYBACK = "STAYBACK"
//        static let PICKED_BY_PARENT = "PICKED BY PARENT"
//
//        static let change_Theme = "Change Theme"
//        static let update_boarding_point = "Update boarding point"
//        static let logout = "Logout"
//        static let locAccTitle = "This application requires location services to work. Do you want to enable location from settings?"
//        static let noStudFound = "No Students Found"
//        static let locNotFound = "Location not found!!.Please try again"
//        static let welcomeTxt = "Hello \(gvar.newPARENT_NAME ?? "")!"
//        static let noStudentInBus = "No Students in Bus"
//    }
//
//    struct PathExt {
//        static let getLoginOtp = "/getLoginOtp"
//        static let getcountries = "/getcountries"
//        static let getWardList = "/getWardList"
//        static let verifyParentOtp = "/verifyParentOtp"
//        static let getTimeline = "/getTimeline"
//        static let getContactDetails = "/getContactDetails"
//        static let updateBoardingPoint = "/updateBoardingPoint"
//        static let updateBoardingStop = "/updateBoardingStop"
//        static let getPaymentsHistory = "/getPaymentsHistory"
//        static let getPaymentConfig = "/getPaymentConfig"
//        static let transactionStatus = "/transactionStatus"
//        //MARK: ADDED NEW GET CURRENT LOCATION BASE API
//        static let getStudCurrentLoc = "/getStudCurrentLoc"
//        static let getStudCurrentLocAdvanced = "/getStudCurrentLocAdvanced"
//
//        static let logOutParent = "/logOutParent"
//        static let updateParentDeviceInfo = "/updateParentDeviceInfo"
//        static let getNotificationList = "/getNotificationList"
//        static let getAppVersionInfo =  Environment.versionAPIPath //"/getAppVersionInfo"
//        static let technicalSupportParent = "/technicalSupportParent"
//        static let setPushNotificationPermission = "/setPushNotificationPermission"
//        static let getAppConfig = Environment.appConfigAPIPath //"/getAppConfig"
//        static let getContactUs = "/getContactUs"
//        static let advancedContactUs = "/advancedContactUs"
//        static let showStudCurStoppages = "/showStudCurStoppages"
//        static let getStudTripStatus = "/getStudTripStatus"
//
//        static let getAllBaseStops = "/getAllBaseStops"
//    }
    
}
