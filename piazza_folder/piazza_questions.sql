-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 13, 2021 at 06:46 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `piazza_questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `cse109`
--

CREATE TABLE `cse109` (
  `id` int(11) NOT NULL,
  `problem` text,
  `subject` text,
  `error` text,
  `answer` text NOT NULL,
  `pid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cse216`
--

CREATE TABLE `cse216` (
  `id` int(11) NOT NULL,
  `problem` text,
  `subject` text,
  `error` text,
  `answer` text NOT NULL,
  `pid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cse216`
--

INSERT INTO `cse216` (`id`, `problem`, `subject`, `error`, `answer`, `pid`) VALUES
(1, 'Does anyone know how to get the data that is sent to the android app from the backend after a post request.  I''m trying to put my sessionKey into SharedPreferences so it can be used to authenticate other functions of the app.  Here is what I have for my code:\r\ntry {\r\n                RequestQueue requestQueue = Volley.newRequestQueue(this);\r\n                String URL = "https://gitgud216.herokuapp.com/google-login";\r\n                JSONObject jsonBody = new JSONObject();\r\n                jsonBody.put("token", idToken);\r\n                final String requestBody = jsonBody.toString();\r\n\r\n                StringRequest stringRequest = new StringRequest(Request.Method.POST, URL, new Response.Listener&lt;String&gt;() {\r\n                    @Override\r\n                    public void onResponse(String response) {\r\n                        Log.i("VOLLEY", response);\r\n                    }\r\n                }, new Response.ErrorListener() {\r\n                    @Override\r\n                    public void onErrorResponse(VolleyError error) {\r\n                        Log.e("VOLLEY", error.toString());\r\n                    }\r\n                }) {\r\n                    @Override\r\n                    public String getBodyContentType() {\r\n                        return "application/json; charset=utf-8";\r\n                    }\r\n\r\n                    @Override\r\n                    public byte[] getBody() throws AuthFailureError {\r\n                        try {\r\n                            return requestBody == null ? null : requestBody.getBytes("utf-8");\r\n                        } catch (UnsupportedEncodingException uee) {\r\n                            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", requestBody, "utf-8");\r\n                            return null;\r\n                        }\r\n                    }\r\n\r\n                    @Override\r\n                    protected Response&lt;String&gt; parseNetworkResponse(NetworkResponse response) {\r\n                        String responseString = "";\r\n                        Log.d("wcr221", "response: " + response);\r\n                        if (response != null) {\r\n                            responseString = String.valueOf(response);\r\n                            Log.d("wcr221", "responseString: " + responseString);\r\n                            // can get more details such as response.headers\r\n                        }\r\n                        return Response.success(responseString, HttpHeaderParser.parseCacheHeaders(response));\r\n                    }\r\n                };\r\n\r\n                requestQueue.add(stringRequest);\r\n                Log.d("wcr221", "stringRequest: " + stringRequest);\r\n            } catch (JSONException e) {\r\n                e.printStackTrace();\r\n            }\r\n            updateUI(account);\r\n        } catch (ApiException e) {\r\n            // The ApiException status code indicates the detailed failure reason.\r\n            // Please refer to the GoogleSignInStatusCodes class reference for more information.\r\n            Log.w("cjn221", "signInResult:failed code=" + e.getStatusCode());\r\n            updateUI(null);\r\n        }', 'android application; data passing; post request; session key; authentication', NULL, '', NULL),
(2, 'It has been claimed that patterns are just for “fixing bad programming languages”, and they do not offer objective benefits during software design. Do you agree or disagree? Why? \r\n\r\nCan someone please explain what are the potential objective benefits in this question?\r\nThanks in advance!', 'programming patterns; software design;', NULL, '', NULL),
(3, 'File file = driveService.files().create(fileMetadata, mediaContent)\r\n.setFields("id")\r\n.execute();\r\nSystem.out.println("File ID: " + file.getId()); //what we stored\r\n\r\nI keep getting an error with driveService when I use it (above). I thought I had all import statements and dependencies necessary. Has anyone else gotten this error? ', 'import files; dependencies; driveService;', NULL, '', NULL),
(4, 'private static final String UPLOAD_FILE_PATH = "Enter File Path";\r\n\r\nWhat are we supposed to put as the UPLOAD_FILE_PATH?', 'UPLOAD_FILE_PATH; technical question;', NULL, 'Google Drive API requires you to upload a file in java.io.File type so you have to put a path to the file you want to upload to the Google Drive to make a java.io.File.', '20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cse109`
--
ALTER TABLE `cse109`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `cse216`
--
ALTER TABLE `cse216`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

