.class public Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;
    }
.end annotation


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private base_time:J

.field private isOnConfigChange:Z

.field private isOnPause:Z

.field private mDescription:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBttn:Landroid/widget/Button;

.field private mShownDialogId:I

.field private mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

.field private mTextViewPressTime:Landroid/widget/TextView;

.field private mTextViewSec:Landroid/widget/TextView;

.field private mcancelBttn:Landroid/widget/Button;

.field private press_time:J

.field private value_spacing:F

.field private value_textSize:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide v0
.end method

.method static synthetic -get1()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    .line 51
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method private final isMobileKeyboardCovered()Z
    .locals 9

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "bCovered":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 229
    .local v1, "conf":Landroid/content/res/Configuration;
    :try_start_0
    const-class v7, Landroid/content/res/Configuration;

    const-string/jumbo v8, "mobileKeyboardCovered"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 230
    .local v5, "isCovered":Ljava/lang/reflect/Field;
    const-class v7, Landroid/content/res/Configuration;

    const-string/jumbo v8, "MOBILEKEYBOARD_COVERED_YES"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 232
    .local v6, "mobileCoveredOn":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v8

    if-ne v7, v8, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 239
    .end local v5    # "isCovered":Ljava/lang/reflect/Field;
    .end local v6    # "mobileCoveredOn":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 236
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 237
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 3
    .param p1, "newValue"    # I

    .prologue
    .line 265
    const-string/jumbo v0, "TapAndHoldDelayCustomFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    const-string/jumbo v1, "long_press_timeout"

    .line 266
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100286

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public initDP()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 144
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 145
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a0264

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 148
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_textSize:F

    .line 150
    const v3, 0x7f0a0261

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 151
    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v2

    .line 152
    .local v2, "value":F
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    .line 143
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 93
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 296
    packed-switch p2, :pswitch_data_0

    .line 318
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 298
    :pswitch_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    .line 299
    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    long-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100288

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 302
    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 300
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_1
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    .line 307
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 310
    :pswitch_2
    iget v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    if-ne v1, v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 312
    .local v0, "PreVal":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100287

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 312
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-wide v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    long-to-int v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100288

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 253
    iget-wide v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->press_time:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 251
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "PreVal":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getMetricsCategory()I

    move-result v2

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100287

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 257
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 191
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 193
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 194
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 195
    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    if-nez v3, :cond_0

    .line 196
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->removeDialog(I)V

    .line 198
    :cond_0
    const v3, 0x7f0402fb

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1106bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    .line 200
    const v3, 0x7f1106c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    .line 201
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v3, 0x7f1106c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    .line 203
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v3, 0x7f1106bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    .line 206
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 207
    const v3, 0x7f1106bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    .line 208
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v3, 0x7f1106be

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    .line 210
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->base_time:J

    .line 212
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a02b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 215
    invoke-direct {v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void

    .line 218
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->setRetainInstance(Z)V

    .line 87
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "dialogId"    # I

    .prologue
    const/4 v4, 0x0

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 276
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 290
    const/4 v2, 0x0

    return-object v2

    .line 278
    :pswitch_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mShownDialogId:I

    .line 279
    const v2, 0x7f0b0210

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 283
    const v3, 0x7f0b1536

    .line 280
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 284
    const/high16 v3, 0x1040000

    .line 280
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 285
    const v3, 0x7f0b1537

    .line 280
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 286
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    .line 287
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 288
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    return-object v2

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->initDP()V

    .line 119
    const v1, 0x7f0402fb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1106bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    .line 121
    const v1, 0x7f1106c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f1106c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v1, 0x7f1106bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDescription:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->value_spacing:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 128
    const v1, 0x7f1106bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    .line 129
    const v1, 0x7f1106be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isMobileKeyboardCovered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 133
    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->setHasOptionsMenu(Z)V

    .line 140
    return-object v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 243
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 338
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkLongPressStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->showDialog(I)V

    .line 336
    :goto_0
    return v1

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->finish()V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setActivityState(Z)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkAndSaveState()V

    .line 185
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 181
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b170f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    .line 159
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->setActivityState(Z)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->checkTouchBeforeResume()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->getTouchTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldView;->refresh()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewSec:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mTextViewPressTime:Landroid/widget/TextView;

    const-string/jumbo v1, "%.2f"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->removeDialog(I)V

    .line 173
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnPause:Z

    .line 174
    iput-boolean v4, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->isOnConfigChange:Z

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 156
    return-void
.end method
