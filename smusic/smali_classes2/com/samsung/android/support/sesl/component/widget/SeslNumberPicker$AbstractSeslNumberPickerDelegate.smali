.class abstract Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;
.super Ljava/lang/Object;
.source "SeslNumberPicker.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$SeslNumberPickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractSeslNumberPickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;Landroid/content/Context;)V
    .locals 0
    .param p1, "delegator"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 990
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;->mContext:Landroid/content/Context;

    .line 991
    return-void
.end method
