.class public Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;
.super Landroid/app/Activity;
.source "PpmtPopupActivity.java"


# static fields
.field private static final CENTER_ALIGN:I = 0x2

.field public static final KEY_EXTRA_CLEAR:Ljava/lang/String; = "extra_clear"

.field public static final KEY_EXTRA_IS_FIRST_DISPLAY:Ljava/lang/String; = "extra_is_first_display"

.field public static final KEY_EXTRA_POPUP_DATA:Ljava/lang/String; = "extra_popup"

.field public static final KEY_EXTRA_TTL_TO:Ljava/lang/String; = "extra_ttlto"

.field private static final LEFT_ALIGN:I = 0x3

.field private static final RIGHT_ALIGN:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final VERTICAL_ALIGN:I = 0x4


# instance fields
.field private mDisplayId:I

.field private mIsFirstDisplay:Z

.field private mMainImageView:Landroid/widget/ImageView;

.field private mMid:Ljava/lang/String;

.field private mPopupLayout:Landroid/widget/FrameLayout;

.field private mPopupMarginBottom:Landroid/view/View;

.field private mPopupMarginTop:Landroid/view/View;

.field private mSendFeedbackWhenDestroy:Z

.field private mTargetId:Ljava/lang/String;

.field private mTtl:J

.field private mType:I

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;
    .param p1, "x1"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displayFail(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displayFailButRetry()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displaySuccess()V

    return-void
.end method

.method private displayFail(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 7
    .param p1, "feedback"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p2, "userFeedbackValue"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTtl:J

    iget-boolean v6, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mIsFirstDisplay:Z

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v1, p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    .line 139
    return-void
.end method

.method private displayFailButRetry()V
    .locals 7

    .prologue
    .line 142
    new-instance v1, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTtl:J

    iget-boolean v6, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mIsFirstDisplay:Z

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFailButRetry(Landroid/content/Context;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    .line 145
    return-void
.end method

.method private displaySuccess()V
    .locals 7

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mDisplayId:I

    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->setCurrentDisplayID(I)V

    .line 132
    new-instance v1, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTtl:J

    iget-boolean v6, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mIsFirstDisplay:Z

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onSuccess(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method private getPopupHorizontalMarginByType(I)I
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 167
    packed-switch p1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 169
    :pswitch_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x64

    goto :goto_0

    .line 173
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 174
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x2

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    .line 177
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 178
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 179
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x64

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initBottomLayout(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 330
    const-string v1, "bottom_visible"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const-string v1, "btn1_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "button1Text":Ljava/lang/String;
    const-string v1, "btn1_action"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getActionList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 333
    .local v5, "button1Actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v1, "btn2_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, "button2Text":Ljava/lang/String;
    const-string v1, "btn2_action"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getActionList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 335
    .local v13, "button2Actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v1, "btn_align"

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 337
    .local v8, "buttonAlign":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 339
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    const-string v3, "fail to display. invalid bundle"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v1

    .line 343
    :cond_1
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_bottom1:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 344
    .local v2, "bottom1":Landroid/widget/LinearLayout;
    const/4 v1, 0x4

    if-ne v8, v1, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 345
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_bottom2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 346
    .local v10, "bottom2":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 347
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 355
    .end local v2    # "bottom1":Landroid/widget/LinearLayout;
    .end local v4    # "button1Text":Ljava/lang/String;
    .end local v5    # "button1Actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v8    # "buttonAlign":I
    .end local v10    # "bottom2":Landroid/widget/LinearLayout;
    .end local v12    # "button2Text":Ljava/lang/String;
    .end local v13    # "button2Actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_2
    :goto_0
    return-void

    .line 349
    .restart local v2    # "bottom1":Landroid/widget/LinearLayout;
    .restart local v4    # "button1Text":Ljava/lang/String;
    .restart local v5    # "button1Actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v8    # "buttonAlign":I
    .restart local v12    # "button2Text":Ljava/lang/String;
    .restart local v13    # "button2Actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_3
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    const/4 v8, 0x2

    :cond_4
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object v6, v12

    move-object v7, v13

    .line 352
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private initBottomLayout(Landroid/widget/LinearLayout;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 14
    .param p1, "bottomLayout"    # Landroid/widget/LinearLayout;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "leftBtnText"    # Ljava/lang/String;
    .param p5, "rightBtnText"    # Ljava/lang/String;
    .param p7, "align"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p4, "leftBtnActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .local p6, "rightBtnActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v10, "color_bottom"

    const v11, -0xa0a0b

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 360
    .local v2, "color_bottom":I
    const-string v10, "color_line"

    const v11, -0x19191a

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 361
    .local v4, "color_line":I
    const-string v10, "color_btn_text"

    const/high16 v11, -0x22000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 363
    .local v3, "color_button_text":I
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 365
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_line:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 370
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->isArabicStyleLanguage()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 371
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 372
    .local v6, "leftButtonTextView":Landroid/widget/TextView;
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 377
    .local v5, "leftButton":Landroid/widget/LinearLayout;
    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    new-instance v10, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;

    move-object/from16 v0, p4

    invoke-direct {v10, p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$3;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    const/4 v10, 0x2

    move/from16 v0, p7

    if-eq v0, v10, :cond_0

    const/4 v10, 0x4

    move/from16 v0, p7

    if-ne v0, v10, :cond_1

    .line 391
    :cond_0
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 398
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->isArabicStyleLanguage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 399
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 400
    .local v9, "rightButtonTextView":Landroid/widget/TextView;
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 405
    .local v8, "rightButton":Landroid/widget/LinearLayout;
    :goto_1
    const-string v10, "btn2_text"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    new-instance v10, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$4;

    move-object/from16 v0, p6

    invoke-direct {v10, p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$4;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_layout:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 420
    .local v1, "buttonWrapper":Landroid/widget/LinearLayout;
    packed-switch p7, :pswitch_data_0

    .line 441
    .end local v1    # "buttonWrapper":Landroid/widget/LinearLayout;
    .end local v8    # "rightButton":Landroid/widget/LinearLayout;
    .end local v9    # "rightButtonTextView":Landroid/widget/TextView;
    :cond_2
    :goto_2
    return-void

    .line 374
    .end local v5    # "leftButton":Landroid/widget/LinearLayout;
    .end local v6    # "leftButtonTextView":Landroid/widget/TextView;
    :cond_3
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1_text:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 375
    .restart local v6    # "leftButtonTextView":Landroid/widget/TextView;
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button1:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .restart local v5    # "leftButton":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 402
    :cond_4
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2_text:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 403
    .restart local v9    # "rightButtonTextView":Landroid/widget/TextView;
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button2:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .restart local v8    # "rightButton":Landroid/widget/LinearLayout;
    goto :goto_1

    .line 422
    .restart local v1    # "buttonWrapper":Landroid/widget/LinearLayout;
    :pswitch_0
    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 423
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 424
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 425
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin3:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 428
    :pswitch_1
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 429
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin1:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 430
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin2:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 431
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_button_margin3:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 434
    :pswitch_2
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    sget v10, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_line_for_centeralign:I

    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 436
    .local v7, "line":Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 437
    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initializeBodyText(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 252
    const-string v3, "body_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 253
    .local v0, "body":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    sget-object v3, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail to display. invalid bundle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v3

    .line 257
    :cond_0
    const-string v3, "color_body"

    const/high16 v4, -0x22000000

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, "color_body_text":I
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->isArabicStyleLanguage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_body_message_for_rtl:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 264
    .local v1, "bodyTextView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    return-void

    .line 262
    .end local v1    # "bodyTextView":Landroid/widget/TextView;
    :cond_1
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_body_message:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "bodyTextView":Landroid/widget/TextView;
    goto :goto_0
.end method

.method private initializeMainImage(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .prologue
    .line 240
    const-string v2, "img_main"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "mainImagePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to display. invalid bundle"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v2}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v2

    .line 245
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 247
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v2, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_main_image:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMainImageView:Landroid/widget/ImageView;

    .line 248
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMainImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    return-void
.end method

.method private initializeView(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 188
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_layout:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupLayout:Landroid/widget/FrameLayout;

    .line 189
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupLayout:Landroid/widget/FrameLayout;

    const-string v4, "color_bg"

    const v5, -0x50506

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 190
    iget v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mType:I

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getPopupHorizontalMarginByType(I)I

    move-result v1

    .line 191
    .local v1, "layoutMargin":I
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_layout_margin_top:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupMarginTop:Landroid/view/View;

    .line 192
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_layout_margin_bottom:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupMarginBottom:Landroid/view/View;

    .line 193
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupMarginTop:Landroid/view/View;

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupMarginBottom:Landroid/view/View;

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v6, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    sget v3, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_close_btn:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 197
    .local v0, "closeButton":Landroid/widget/ImageButton;
    const-string v3, "close_visible"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 198
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->isArabicStyleLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v3, 0x33

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 204
    new-instance v3, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$1;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initBottomLayout(Landroid/os/Bundle;)V

    .line 219
    const/4 v3, 0x4

    iget v4, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mType:I

    if-ne v3, v4, :cond_2

    .line 220
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeWebView(Landroid/os/Bundle;)V

    .line 236
    :goto_1
    return-void

    .line 214
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_2
    iget v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 234
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displaySuccess()V

    goto :goto_1

    .line 224
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeBodyText(Landroid/os/Bundle;)V

    goto :goto_2

    .line 227
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeMainImage(Landroid/os/Bundle;)V

    goto :goto_2

    .line 230
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeBodyText(Landroid/os/Bundle;)V

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeMainImage(Landroid/os/Bundle;)V

    goto :goto_2

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initializeWebView(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 270
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    const-string/jumbo v1, "web"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "webUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail to display. invalid bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v1

    .line 278
    :cond_0
    sget v1, Lcom/samsung/android/sdk/ppmt/R$id;->ppmt_pop_webview:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mWebView:Landroid/webkit/WebView;

    .line 279
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity$2;-><init>(Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 325
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 327
    return-void
.end method

.method private setContentViewByType()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 162
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw v0

    .line 150
    :pswitch_0
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_text_only:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    .line 164
    :goto_0
    return-void

    .line 153
    :pswitch_1
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_image_only:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 156
    :pswitch_2
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_image_text:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 159
    :pswitch_3
    sget v0, Lcom/samsung/android/sdk/ppmt/R$layout;->pop_web_view:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentView(I)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 446
    .local v0, "dialogBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const/4 v1, 0x0

    .line 452
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 457
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    if-eqz v1, :cond_0

    .line 458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    .line 459
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getDeleteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 463
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, -0x1

    .line 467
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 468
    iget v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mType:I

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getPopupHorizontalMarginByType(I)I

    move-result v0

    .line 469
    .local v0, "layoutMargin":I
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupMarginTop:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mPopupMarginBottom:Landroid/view/View;

    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->requestWindowFeature(I)Z

    .line 89
    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_clear"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "the activity is started to clear popup"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_popup"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_is_first_display"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mIsFirstDisplay:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_ttlto"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTtl:J

    .line 104
    if-eqz v0, :cond_1

    .line 105
    const-string/jumbo v2, "template_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mType:I

    .line 106
    const-string v2, "mid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    .line 107
    const-string/jumbo v2, "targetid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    .line 108
    const-string v2, "displayid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mDisplayId:I

    .line 110
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTtl:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mDisplayId:I

    if-gtz v2, :cond_5

    .line 111
    :cond_4
    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    const-string v3, "fail to display popup. invalid params"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displayFail(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->setContentViewByType()V

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->initializeView(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displayFail(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    .end local v1    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displayFail(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v1    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    :catch_2
    move-exception v1

    .line 124
    .local v1, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$ImageDecodingException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v3, "img_decode_fail"

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->displayFail(Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 475
    sget-object v1, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iput-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMainImageView:Landroid/widget/ImageView;

    .line 477
    iput-object v3, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mWebView:Landroid/webkit/WebView;

    .line 478
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mSendFeedbackWhenDestroy:Z

    if-eqz v1, :cond_0

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "display_result"

    const-string v2, "gone_no_reaction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string/jumbo v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->mDisplayId:I

    invoke-static {}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->getCurrentDisplayID()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 488
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->setCurrentDisplayID(I)V

    .line 490
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 491
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 79
    if-eqz p1, :cond_0

    const-string v0, "extra_clear"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "the activity is started to clear popup"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;->finish()V

    .line 83
    :cond_0
    return-void
.end method
