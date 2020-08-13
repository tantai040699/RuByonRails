/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/cusjs.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/cusjs.js":
/*!***************************************!*\
  !*** ./app/javascript/packs/cusjs.js ***!
  \***************************************/
/*! no static exports found */
/***/ (function(module, exports) {

// // $(document).ready(function() {
// //     $.validator.addMethod("password", function(value, element) {
// //         return /^[A-Za-z0-9\d=!-@._*]+$/.test(value);
// //     }), "Password invalid";
// // });
// // $(document).ready(function() {
// //     $("#form_signup").validate({
// //         rules: {
// //             text_Input_First_Signup: {
// //                 required: true,
// //                 maxlength: 25
// //             },
// //             text_Input_Last_Signup: {
// //                 required: true,
// //                 maxlength: 25
// //             },
// //             email_Input_Signup: {
// //                 required: true,
// //                 email: true,
// //                 maxlength: 255
// //             },
// //             password_Input_Signup: {
// //                 required: true,
// //                 password: true,
// //                 maxlength: 64
// //             },
// //             password_Input_Confirm_Singup: {
// //                 required: true,
// //                 equalTo: "#password_Input_Signup",
// //                 maxlength: 64
// //             }
// //         },
// //         messages: {
// //             text_Input_First_Signup: {
// //                 required: "Pleases enter first name",
// //                 maxlength: "Maximum 25 characters long "
// //             },
// //             text_Input_Last_Signup: {
// //                 required: "Pleases enter first name",
// //                 maxlength: "Maximum 25 characters long "
// //             },
// //             email_Input_Signup: {
// //                 required: "Pleases enter email",
// //                 email: "Invalid email",
// //                 maxlength: "Maximum 255 characters long "
// //             },
// //             password_Input_Signup: {
// //                 required: "Pleases enter password",
// //                 password: "Invalid password",
// //                 maxlength: "Maximum 64 characters long "
// //             },
// //             password_Input_Confirm_Singup: {
// //                 required: "Pleases enter password",
// //                 equalTo: "Password incorrect",
// //                 maxlength: "Maximum 64 characters long "
// //             }
// //         }
// //     });
// //     $("button").click(function(e) {
// //         $("form_signup").submit();
// //     });
// // });
$(document).ready(function () {
  // var img = $(this).attr(src);
  // $('#modal-img').attr('src',img);
  alert('123');
});

/***/ })

/******/ });
//# sourceMappingURL=cusjs-2eb6d48a377e0afce48b.js.map