@core @core_admin @theme_slboost
Feature: Select a theme in SLboost theme
  In order to choose a theme
  As an admin
  I need to preview the theme and make a selection

  Background:
    Given I log in as "admin"
    And I navigate to "Appearance > Themes" in site administration

  @javascript
  Scenario: I am able to preview a theme using a modal window
    When I click on "Preview theme 'SLboost'" "button"
    Then I should see "SLboost" in the "SLboost" "dialogue"
    And I should see "SLboost is a modern highly-customisable theme." in the "SLboost" "dialogue"
    And I should see "Current theme" in the "SLboost" "dialogue"

  @javascript
  Scenario: I am able to change the theme using the modal window select button
    Given I should see "Current theme" in the "#theme-card-slboost" "css_element"
    When I click on "Preview theme 'Classic'" "button"
    And I click on "Select theme" "button" in the "Classic" "dialogue"
    Then I should see "Current theme" in the "#theme-card-classic" "css_element"

  Scenario: I am able to change the theme using the normal select button
    Given I should see "Current theme" in the "#theme-card-slboost" "css_element"
    When I click on "Select theme 'Classic'" "button"
    Then I should see "Current theme" in the "#theme-card-classic" "css_element"

  Scenario: I am able to view a theme's settings page
    Given I click on "Edit theme settings 'SLboost'" "link"
    Then I should see "SLboost"
