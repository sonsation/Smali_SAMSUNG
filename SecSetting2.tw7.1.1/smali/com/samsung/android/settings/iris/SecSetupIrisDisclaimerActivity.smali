.class public Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;
.super Landroid/app/Activity;
.source "SecSetupIrisDisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsEnable:Z

.field private mSUWBottomBar:Landroid/widget/RelativeLayout;

.field private mSUWNextBtn:Landroid/widget/LinearLayout;

.field private mSUWNextBtnImg:Landroid/widget/ImageView;

.field private mSUWNextText:Landroid/widget/TextView;

.field private mSUWOpenBtnImg:Landroid/widget/ImageView;

.field private mSUWPrevBtn:Landroid/widget/LinearLayout;

.field private mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;


# direct methods
.method static synthetic -set0(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setEnableNextButton(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    .line 23
    return-void
.end method

.method private initView()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 53
    const v10, 0x7f1104ec

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 54
    .local v6, "tv1":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0973

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\n"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "header1":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .local v0, "content1":Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/UnderlineSpan;

    invoke-direct {v10}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v0, v10, v13, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    const v10, 0x7f1104ee

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 61
    .local v7, "tv2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0977

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\n"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "header2":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    .local v1, "content2":Landroid/text/SpannableString;
    new-instance v10, Landroid/text/style/UnderlineSpan;

    invoke-direct {v10}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v11

    invoke-virtual {v1, v10, v13, v11, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 64
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    const v10, 0x7f1104ed

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 68
    .local v8, "tvMsg1":Landroid/widget/TextView;
    const-string/jumbo v4, ""

    .line 69
    .local v4, "msg1":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0975

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 74
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0976

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v10, 0x7f1104ef

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 79
    .local v9, "tvMsg2":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0978

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "msg2":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v10, 0x7f110738

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    .line 83
    const v10, 0x7f11073a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    .line 84
    const v10, 0x7f11073c

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    .line 85
    const v10, 0x7f11073d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    .line 86
    const v10, 0x7f11073e

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    .line 87
    const v10, 0x7f11073f

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    .line 89
    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    const v11, 0x7f0b14aa

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWPrevBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v10, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v10, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0, v13}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setEnableNextButton(Z)V

    .line 95
    const v10, 0x7f1104eb

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/settings/widget/BottomScrollView;

    iput-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;

    .line 96
    iget-object v10, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;

    new-instance v11, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity$1;-><init>(Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/BottomScrollView;->setOnBottomReachedListener(Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;)V

    .line 51
    return-void

    .line 72
    .end local v5    # "msg2":Ljava/lang/String;
    .end local v9    # "tvMsg2":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0974

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private setEnableNextButton(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 108
    .local v0, "isEnabledShowBtnBg":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020681

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :goto_1
    return-void

    .line 107
    .end local v0    # "isEnabledShowBtnBg":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isEnabledShowBtnBg":Z
    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWNextBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mSUWOpenBtnImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mIsEnable:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->finish()V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->mScrollView:Lcom/samsung/android/settings/widget/BottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/BottomScrollView;->fullScroll(I)Z

    goto :goto_0

    .line 134
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setResult(I)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->finish()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f11073a
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 44
    .local v0, "localWindow":Landroid/view/Window;
    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    .line 46
    const v1, 0x7f040168

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/SecSetupIrisDisclaimerActivity;->initView()V

    .line 36
    return-void
.end method
