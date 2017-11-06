.class public interface abstract Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnMultiSelectedListener;
.super Ljava/lang/Object;
.source "SeslAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMultiSelectedListener"
.end annotation


# virtual methods
.method public abstract OnMultiSelectStart(II)V
.end method

.method public abstract OnMultiSelectStop(II)V
.end method

.method public abstract onMultiSelected(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJZZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation
.end method
