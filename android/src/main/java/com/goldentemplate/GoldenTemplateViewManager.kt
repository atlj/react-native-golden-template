package com.goldentemplate

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = GoldenTemplateViewManager.NAME)
class GoldenTemplateViewManager :
  GoldenTemplateViewManagerSpec<GoldenTemplateView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): GoldenTemplateView {
    return GoldenTemplateView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: GoldenTemplateView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "GoldenTemplateView"
  }
}
