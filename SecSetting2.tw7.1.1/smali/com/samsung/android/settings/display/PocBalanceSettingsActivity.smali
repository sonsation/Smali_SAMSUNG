.class public Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "PocBalanceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;,
        Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;
    }
.end annotation


# instance fields
.field private final mApplyButtonListener:Landroid/view/View$OnClickListener;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:I

.field private mContext:Landroid/content/Context;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPocApplyButton:Landroid/widget/Button;

.field private mPocApplyDialog:Landroid/app/AlertDialog;

.field private mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

.field private mPocBatteryCheckDialog:Landroid/app/AlertDialog;

.field private mPocErrorOccuredDialog:Landroid/app/AlertDialog;

.field private mPocPreviousIndex:I

.field private mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocPreviousIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocApplyDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocBatteryCheckDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->startPocBalance()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    .line 80
    iput v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocPreviousIndex:I

    .line 82
    iput v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryLevel:I

    .line 84
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 233
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mApplyButtonListener:Landroid/view/View$OnClickListener;

    .line 469
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method private disableStatusBar()V
    .locals 5

    .prologue
    .line 337
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 338
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_2

    .line 342
    const-string/jumbo v2, "PocBalanceSettingsActivity"

    const-string/jumbo v3, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/high16 v1, 0x3210000

    .line 348
    .local v1, "statusBarFlag":I
    const/4 v0, 0x0

    .line 344
    .local v0, "flagCheckresult":I
    const/high16 v2, 0x3210000

    .line 351
    if-eqz v2, :cond_1

    .line 352
    const-string/jumbo v2, "PocBalanceSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[stpoc] disableNotifications disable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 336
    .end local v0    # "flagCheckresult":I
    .end local v1    # "statusBarFlag":I
    :goto_0
    return-void

    .line 355
    .restart local v0    # "flagCheckresult":I
    .restart local v1    # "statusBarFlag":I
    :cond_1
    const-string/jumbo v2, "PocBalanceSettingsActivity"

    const-string/jumbo v3, "[stpoc] disableNotifications already disabled"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v0    # "flagCheckresult":I
    .end local v1    # "statusBarFlag":I
    :cond_2
    const-string/jumbo v2, "PocBalanceSettingsActivity"

    const-string/jumbo v3, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableStatusBar()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 363
    :goto_0
    return-void

    .line 368
    :cond_0
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hasPocErrorOccurredOnBoot()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 401
    const-string/jumbo v5, "/efs/etc/poc/failcount"

    .line 404
    .local v5, "lFileName":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "eFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 406
    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot failcount file exist"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 407
    const/4 v3, 0x0

    .line 409
    .local v3, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v4, "in":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 413
    const-string/jumbo v7, "PocBalanceSettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[stpoc] failcount value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 415
    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot result : true"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 416
    const/4 v7, 0x1

    .line 423
    if-eqz v4, :cond_0

    .line 425
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 416
    :cond_0
    :goto_0
    return v7

    .line 426
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz v4, :cond_2

    .line 425
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 431
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_5
    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot result : false"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 432
    return v10

    .line 426
    .restart local v4    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 419
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v1

    .line 421
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 423
    if-eqz v3, :cond_2

    .line 425
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 426
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 423
    :goto_3
    if-eqz v3, :cond_3

    .line 425
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 422
    :cond_3
    :goto_4
    :try_start_9
    throw v7
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 434
    .end local v2    # "eFile":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 435
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    const-string/jumbo v7, "PocBalanceSettingsActivity"

    const-string/jumbo v8, "[stpoc] hasErrorOccuredOnBoot result : false"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return v10

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "eFile":Ljava/io/File;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 419
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private initPocUI()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 170
    const v4, 0x7f110614

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 171
    .local v2, "pocDescription":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v3, "sb":Ljava/lang/StringBuilder;
    const v4, 0x7f0b0665

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const v4, 0x7f0b0666

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const v4, 0x7f110616

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    .line 180
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mApplyButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    :cond_1
    const v4, 0x7f110615

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/widget/IntervalSeekBar;

    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    .line 186
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    if-eqz v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    new-instance v5, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$3;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 222
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getCurrentSeekbarIndex(Landroid/content/Context;)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 223
    .local v1, "pocCurrentIndex":I
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocPreviousIndex:I

    .line 224
    const-string/jumbo v4, "PocBalanceSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[stpoc] current preset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 229
    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocPreview(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "pocCurrentIndex":I
    :cond_2
    return-void
.end method

.method private showPocApplyDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 244
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    return-void

    .line 246
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    .line 247
    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$4;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 253
    .local v2, "cancelListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 263
    .local v0, "applyListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$6;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 269
    .local v1, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 270
    const v4, 0x7f0b0673

    .line 269
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 271
    const v4, 0x7f0b0666

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 272
    const v4, 0x7f0b1865

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 274
    const v4, 0x7f0b0512

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-virtual {v3, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    .line 276
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocApplyDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 243
    return-void
.end method

.method private showPocBatteryCheckDialog()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 443
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 444
    return-void

    .line 445
    :cond_0
    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 446
    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$11;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 453
    .local v1, "okListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$12;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$12;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 460
    .local v0, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 461
    const v3, 0x7f0b0667

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 462
    const v3, 0x7f0b0668

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 463
    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 462
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 464
    const v3, 0x7f0b0512

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    .line 466
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBatteryCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 442
    return-void
.end method

.method private showPocReadErrorOccuredOnProgressDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    return-void

    .line 310
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 313
    .local v1, "eventID":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getMetrics()I

    move-result v4

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 315
    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$9;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 322
    .local v2, "okListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$10;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 328
    .local v0, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 329
    const v4, 0x7f0b0672

    .line 328
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 330
    const v4, 0x7f0b0671

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 331
    const v4, 0x7f0b0512

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    .line 333
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocReadErrorOccuredOnProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 307
    return-void
.end method

.method private showPocWriteErrorOccuredOnBootDialog()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    return-void

    .line 282
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f019a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 284
    .local v1, "eventID":I
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getMetrics()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v1, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 285
    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 292
    .local v2, "okListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$8;-><init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    .line 298
    .local v0, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 299
    const v4, 0x7f0b066e

    .line 298
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0b066f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    const v5, 0x7f0b0670

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 302
    const v4, 0x7f0b0512

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    .line 304
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocErrorOccuredDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 279
    return-void
.end method

.method private startPocBalance()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.settings.POC_BALANCE_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string/jumbo v1, "d1_poc_index"

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mPocBalanceSeekBar:Lcom/samsung/android/settings/widget/IntervalSeekBar;

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const/16 v1, 0x2711

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 396
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->backupDefaultScreenBrightnessMode(Landroid/content/Context;)V

    .line 389
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 374
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 376
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] onActivityResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    .line 379
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 380
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] POC is donepoc_fwup"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const-string/jumbo v0, "PocBalanceSettingsActivity"

    const-string/jumbo v1, "[stpoc] POC is canceled, just finish to previous menu"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    iput-object p0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mDNIe"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 97
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ASSISTANT_MENU is killed when PocBalanceSettingsActivity is created, DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const v2, 0x7f0401f0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1504

    .line 106
    .local v1, "uiOptions":I
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->initPocUI()V

    .line 92
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 158
    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] onPause()"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->enableStatusBar()V

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] no BatteryReceiver"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 128
    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] onResume()"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string/jumbo v1, "PocBalanceSettingsActivity"

    const-string/jumbo v2, "[stpoc] isDesktopMode"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->finish()V

    .line 133
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->disableStatusBar()V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->hasPocErrorOccurredOnBoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocWriteErrorOccuredOnBootDialog()V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "sec_display_poc_application_complete"

    .line 142
    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 144
    .local v0, "pocProgressStatus":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocReadErrorOccuredOnProgressDialog()V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "sec_display_poc_application_complete"

    .line 146
    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1504

    .line 120
    .local v1, "uiOptions":I
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 113
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "uiOptions":I
    :cond_0
    return-void
.end method
