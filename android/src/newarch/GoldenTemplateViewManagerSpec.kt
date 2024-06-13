package com.goldentemplate

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.GoldenTemplateViewManagerDelegate
import com.facebook.react.viewmanagers.GoldenTemplateViewManagerInterface

abstract class GoldenTemplateViewManagerSpec<T : View> : SimpleViewManager<T>(), GoldenTemplateViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = GoldenTemplateViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
