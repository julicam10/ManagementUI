import 'package:flutter/material.dart';
import 'package:managment_app_ui/models/worker_info.dart';

List<WorkerDetails> workerDetails = [
  WorkerDetails(
    name: 'Angel Duarte',
    image: 'assets/avatars/user3.jpg',
    color: const Color(0x00FEE1E8),
    job: 'Scrum Master',
    jobTitle: 'Systems Engineer',
    general:
        'Great job when he develop something, he can share ideas really good.',
    software: 'Notion, Jira, Power BI.',
  ),
  WorkerDetails(
      name: 'Juan Carlos',
      image: 'assets/avatars/user2.jpg',
      color: const Color(0x00FFFFB5),
      job: 'Risk Advisor',
      jobTitle: 'Systems Engineer',
      general:
          'Great worker with people, he is really good using agile methodologies.',
      software: 'EMS, COTTool, CVE.'),
  WorkerDetails(
      name: 'Samuel Guzman',
      image: 'assets/avatars/user4.jpg',
      color: const Color(0x00abdee6),
      job: 'Back-end Developer',
      jobTitle: 'Systems Engineer',
      general: 'Great worker in team project.',
      software: 'VSCode, Linux, Azure.'),
];
