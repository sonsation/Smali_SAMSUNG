.class final Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;
.super Ljava/lang/Object;
.source "VolumeLimiterSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/VolumeLimiterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckPasswordCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->handleNext()V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)V

    return-void
.end method

.method private handleNext()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 502
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 503
    const-string/jumbo v3, "volumelimit_secure_password"

    .line 502
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "pin":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "mChosenPassword":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 506
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get10(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 508
    const-string/jumbo v3, "volumelimit_set_password"

    .line 507
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 510
    const-string/jumbo v3, "volumelimit_secure_password"

    const/4 v4, 0x0

    .line 509
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 511
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    .line 518
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 501
    :goto_1
    return-void

    .line 512
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get9(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-wrap0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)V

    .line 514
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Z)Z

    goto :goto_0

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSeekBarPreference;->setCheckedPW(Z)V

    goto :goto_0

    .line 520
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v2, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b17f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public showCheckPasswordDialog()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0200c2

    const/4 v7, 0x0

    .line 434
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040073

    invoke-static {v3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 437
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1101c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 438
    .local v1, "mCancelButton":Landroid/widget/Button;
    new-instance v3, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$1;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const v3, 0x7f1101c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 445
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$2;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 453
    .local v0, "isEnabledShowBtnBg":Z
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 455
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get4(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 457
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const v3, 0x7f1101c0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set3(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 458
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$3;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 471
    iget-object v4, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    const v3, 0x7f1101bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 473
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get2(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b17e2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 475
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    .line 476
    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget-object v6, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get6(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    .line 475
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 479
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get5(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 481
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 483
    new-instance v5, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback$4;-><init>(Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;)V

    .line 481
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-set0(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 497
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 498
    iget-object v3, p0, Lcom/samsung/android/settings/notification/VolumeLimiterSettings$CheckPasswordCallback;->this$0:Lcom/samsung/android/settings/notification/VolumeLimiterSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/notification/VolumeLimiterSettings;->-get1(Lcom/samsung/android/settings/notification/VolumeLimiterSettings;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 433
    return-void

    .line 452
    .end local v0    # "isEnabledShowBtnBg":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isEnabledShowBtnBg":Z
    goto/16 :goto_0
.end method
