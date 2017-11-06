.class public interface abstract Lcom/samsung/android/edgelighting/IEdgeLightingController;
.super Ljava/lang/Object;
.source "IEdgeLightingController.java"


# virtual methods
.method public abstract refreshBackground()V
.end method

.method public abstract registerEdgeWindowCallback(Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;)V
.end method

.method public abstract setDozeDrawMode(Z)V
.end method

.method public abstract setWindowType(I)V
.end method

.method public abstract showPreview(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
.end method

.method public abstract startApplication(Lcom/samsung/android/edgelighting/AppEdgeEffectInfo;)V
.end method

.method public abstract startApplication([I)V
.end method

.method public abstract startEdgeEffect(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
.end method

.method public abstract startEdgeToast(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V
.end method

.method public abstract stopApplication()V
.end method

.method public abstract stopEdgeEffect()V
.end method

.method public abstract stopEdgeToast()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract unRegisterEdgeWindowCallback(Lcom/samsung/android/edgelighting/IEdgeLightingWindowCallback;)V
.end method

.method public abstract updatePreview(Lcom/samsung/android/edgelighting/EdgeEffectInfo;)V
.end method

.method public abstract updateText(Landroid/graphics/drawable/Drawable;[Ljava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public abstract updateToastText(Lcom/samsung/android/edgelighting/EdgeToastInfo;)V
.end method
