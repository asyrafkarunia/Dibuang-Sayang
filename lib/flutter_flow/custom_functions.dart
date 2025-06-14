import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

LatLng makeLatLon(
  double lat,
  double lon,
) {
  return LatLng(lat, lon);
}

double? averageRating(List<double>? rating) {
  if (rating == null || rating.isEmpty) {
    return null;
  }
  double sum = 0;
  for (final rate in rating) {
    sum += rate;
  }
  return sum / rating.length;
}
