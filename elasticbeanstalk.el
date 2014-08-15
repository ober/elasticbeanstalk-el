;;; -*- lexical-binding: t -*-
;;; sumo.el --- ElasticBeanstalk Management Interface

;; Copyright (C) 2014 Jaime Fournier <jaimef@linbsd.org>

;; Author: Jaime Fournier <jaimef@linbsd.org>
;; Keywords: AWS Amazon Elastic Beanstalk
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Some of this is cribbed from:
;;; hackernews.el --- Hacker News Client for Emacs
;; Copyright (C) 2012  Lincoln de Sousa <lincoln@comum.org>

;; time, and many revisions before I would expect it to be useful to anyone.
;;

;; Define aws_key to your login email.
;; Define aws_pass to your password.

;; Requires the nice "web" package by Nic, request, and json.


;;; Code:

(setq sumo_basic_auth (concat "Basic " (base64-encode-string (concat sumo_email ":" sumo_pass))))


(require 'web)
(require 'request)
(require 'json)


(defun check-dns-availability ()
  "Checks if the specified CNAME is available"
  )
(defun create-application ()
  "Creates an application that has one configuration template named default and no application versions"
  )
(defun create-application-version ()
  "Creates an application version for the specified application"
  )

(defun create-configuration-template ()
  "Creates a configuration template. Templates are associated with a specific application and are used to deploy different versions of the application with the same configuration settings"
  )
(defun create-environment ()
  "Launches an environment for the specified application using the specified configuration."
  )
(defun create-storage-location ()
  "Creates the Amazon S3 storage location for the account."
  )
(defun delete-application ()
  "Deletes the specified application along with all associated versions and configurations. The application versions will not be deleted from your Amazon S3 bucket"
  )
(defun delete-application-version ()
  "Deletes the specified version from the specified applications"
  )
(defun delete-configuration-template ()
  "Deletes the specified configuration template"
  )
(defun delete-environmental-configuration ()
  "Deletes the draft configuration associated with the running environment"
  )
(defun describe-application-versions ()
  "Returns descriptions of existin application versions"
  )
(defun describe-applications ()
  "Returns the descriptions of existing applications"
  )
(defun describe-configuration-options ()
  "Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines. The description includes the values the options, their default values, and an indication of the required action on a running environment if an option value is changed"
  )

(defun describe-configuration-settings ()
  "Returns a description of the settings for the specified configurations set, that is, either a configuration template or the configuration set associated with a running environment"
  )

(defun describe-environment-resources ()
  "Returns AWS resources for this environment"

  )

(defun describe-environments ()
  "Returns descriptions for existing environments"
  )
(defun describe-events ()
  "Returns list of event descriptions matching criteria up to the last 6 weeks"
  )

(defun list-available-solution-stacks ()
  "Returns a list of the available solution stack names"
  )

(defun rebuild-environment ()
  "Deletes and recreates all the AWS resources (for example: the autoscaling group, load balancer, etc.) for a specified environment and forces a restart."

  )
(defun request-environment-info ()
  "Initiates a request to compile the specified type of information of the deployed environment"
  )

(defun restart-app-server ()
  "Causes the environment to restart the application container server running on each Amazon EC2 instance."
  )

(defun retrieve-environment-info ()
  "Retrieves the compiled information from a request-environment-info request"
  )

(defun swap-environment-cnames ()
  "Swaps the CNAMEs of two environments"
  )

(defun terminate-environment ()
  "Terminates the specified environment"
  )

(defun update-application ()
  "Updates the specified application to have the specified properties"
  )


(defun update-application-version ()
  "Updates the specified application version to have the specified properties"
  )


(defun update-configuration-template ()
  "Updates the specified configuration template to have the specified propterties or configuration option values"
  )

(defun update-environment ()
  "Updatres the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environmment"
  )

(defun validate-configuration-settings ()
  "Takes a set of configuration settings and either a configuration template for environmment, and determines those values are valid"

  )
