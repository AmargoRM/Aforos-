package com.aforos.app

import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createAndroidComposeRule
import androidx.compose.ui.test.onNodeWithText
import org.junit.Rule
import org.junit.Test

class MainActivityTest {
    @get:Rule
    val composeTestRule = createAndroidComposeRule<MainActivity>()

    @Test
    fun helloTextIsDisplayed() {
        val greeting = composeTestRule.activity.getString(R.string.home_greeting)
        composeTestRule.onNodeWithText(greeting).assertIsDisplayed()
    }
}
