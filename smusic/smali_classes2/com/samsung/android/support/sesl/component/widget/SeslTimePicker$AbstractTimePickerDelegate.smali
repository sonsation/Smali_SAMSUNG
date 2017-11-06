.class abstract Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "SeslTimePicker.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$SeslTimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

.field protected mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;

.field protected mOnTimeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    .line 445
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 448
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 449
    return-void
.end method


# virtual methods
.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 455
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method
