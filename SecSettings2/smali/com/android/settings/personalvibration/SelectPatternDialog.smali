.class public Lcom/android/settings/personalvibration/SelectPatternDialog;
.super Landroid/app/Activity;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/SelectPatternDialog$1;
    }
.end annotation


# static fields
.field public static final LOGGING_EXTRA:[Ljava/lang/String;


# instance fields
.field ButtonCenter:Landroid/widget/Button;

.field private mAddItem:I

.field private mAddPos:I

.field protected mAlert:Lcom/android/internal/app/AlertController;

.field protected mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

.field mCurrentSelection:I

.field private mDialog:Landroid/app/AlertDialog;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mExistingUri:Ljava/lang/String;

.field private mFlag:Z

.field private mFromContact:Ljava/lang/Boolean;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mOkBtn:Landroid/widget/Button;

.field private mOlderPosition:I

.field private mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

.field private mShowDefault:Ljava/lang/Boolean;

.field private mStaticItem:I

.field mSupportFolderType:Z

.field vib:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/personalvibration/SelectPatternDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 89
    const-string/jumbo v1, "basic_call"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "heartbeat"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "ticktock"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "waltz"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "zig_zig"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 88
    sput-object v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->LOGGING_EXTRA:[Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    .line 100
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 105
    iput v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 106
    iput v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddItem:I

    .line 107
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 114
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 115
    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->ButtonCenter:Landroid/widget/Button;

    .line 117
    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    .line 776
    new-instance v0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalvibration/SelectPatternDialog$1;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;)V

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 70
    return-void
.end method

.method private PositiveButtonClick()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x0

    .line 661
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v10, v0, v1

    .line 663
    .local v10, "position":I
    if-ne v10, v12, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 667
    .local v11, "resultIntent":Landroid/content/Intent;
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 660
    .end local v11    # "resultIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 669
    :cond_0
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "onClick() - positive : index is -1 so break"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 673
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 674
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 675
    .local v7, "index":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 679
    .restart local v11    # "resultIntent":Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 680
    .local v9, "pickedUriString":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 681
    .local v8, "pickedUri":Landroid/net/Uri;
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v12, v11}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 684
    .end local v8    # "pickedUri":Landroid/net/Uri;
    .end local v9    # "pickedUriString":Ljava/lang/String;
    .end local v11    # "resultIntent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick : OK button is clicked before uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private doVibrate(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 642
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 643
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 644
    .local v7, "index":I
    const-string/jumbo v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 646
    .local v8, "pattern":I
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v3, -0x1

    invoke-virtual {v0, v8, v3, v2, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 648
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 640
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "length":I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 518
    if-gtz v0, :cond_0

    .line 519
    const-string/jumbo v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 513
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 528
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 729
    return-void
.end method

.method public deletePattern(I)Z
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 429
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deletePattern() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 432
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 433
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 434
    .local v8, "id":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete() id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    .line 436
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 438
    .local v7, "count":I
    const/4 v0, 0x1

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 732
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 652
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    .line 654
    iput-boolean v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    .line 657
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getCurrentSelection()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 540
    const/4 v7, -0x1

    .line 541
    .local v7, "keyID":I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 542
    .local v9, "temp":Ljava/lang/String;
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentSelection() temp : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-nez v9, :cond_0

    .line 545
    const-string/jumbo v9, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    .line 547
    const-string/jumbo v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/1"

    .line 546
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 551
    iget-object v9, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 552
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "getCurrentSelection(),  mFromContact && mExistingUri != null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_1
    if-nez v9, :cond_3

    .line 559
    return v10

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 554
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "getCurrentSelection(),  (mFromContact && mExistingUri == null) is true, return 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x0

    return v0

    .line 562
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 564
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 565
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "vibration_pattern"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 573
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 580
    if-eqz v6, :cond_9

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 583
    :cond_5
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v7, v0, :cond_7

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 585
    .local v8, "position":I
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 587
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, v8

    return v0

    .line 575
    .end local v8    # "position":I
    :cond_6
    return v10

    .line 589
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 592
    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 595
    :cond_9
    return v10
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 756
    packed-switch p2, :pswitch_data_0

    .line 753
    :goto_0
    return-void

    .line 758
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    .line 762
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(I)V

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    .line 756
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 771
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 770
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 336
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 337
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 338
    .local v1, "menuItemIndex":I
    const-string/jumbo v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContextItemSelected["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string/jumbo v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onContextItemSelected] :  info.position, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v5, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    packed-switch v1, :pswitch_data_0

    .line 356
    :goto_0
    return v7

    .line 343
    :pswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->deletePattern(I)Z

    .line 344
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 345
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 347
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 348
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 349
    iget v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    goto :goto_0

    .line 352
    :pswitch_1
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 133
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v4, 0x0

    .line 132
    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    .line 135
    const-string/jumbo v3, "show_default"

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    .line 137
    const-string/jumbo v3, "android.intent.extra.pattern.EXISTING_URI"

    .line 136
    invoke-virtual {v12, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 139
    const-string/jumbo v3, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    new-instance v3, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    new-instance v3, Lcom/android/internal/app/AlertController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlert:Lcom/android/internal/app/AlertController;

    .line 147
    new-instance v3, Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x7f0b0a1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 155
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400d4

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x7f0b107a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x7f0b14b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f110252

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f1102c0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 165
    .local v14, "list_dialog_top_padding_view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f1102c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 166
    .local v13, "list_dialog_bottom_padding_view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setupAlert()V

    .line 201
    .end local v13    # "list_dialog_bottom_padding_view":Landroid/view/View;
    .end local v14    # "list_dialog_top_padding_view":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    const v5, 0x7f040308

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckedTextView;

    .line 206
    .local v17, "textView":Landroid/widget/CheckedTextView;
    const-string/jumbo v3, "SelectPatternDialog"

    const-string/jumbo v4, "tw_select_dialog_singlechoice_holo"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_2
    const v3, 0x7f0b0a5f

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 216
    const-string/jumbo v3, "window"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 217
    .local v18, "wm":Landroid/view/WindowManager;
    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    .line 218
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 219
    iget v11, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 223
    .local v11, "density":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 224
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 233
    .end local v11    # "density":I
    .end local v15    # "metrics":Landroid/util/DisplayMetrics;
    .end local v17    # "textView":Landroid/widget/CheckedTextView;
    .end local v18    # "wm":Landroid/view/WindowManager;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 240
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 242
    const-string/jumbo v3, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 246
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    .line 249
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 250
    const-string/jumbo v3, "SelectPatternDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate() positoin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 260
    :goto_3
    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 129
    return-void

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v4, 0x7f0b0a60

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 170
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    .line 171
    .local v10, "actionBar":Landroid/app/ActionBar;
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 172
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 173
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 176
    const v3, 0x7f0b0a1f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setTitle(I)V

    .line 180
    :goto_4
    const v3, 0x7f0400d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setContentView(I)V

    .line 181
    const v3, 0x7f110252

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    .line 182
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/ListView;->setPaddingRelative(IIII)V

    .line 187
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 188
    .local v16, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0a04c4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 189
    const v4, 0x7f0a04ba

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 188
    add-int/2addr v3, v4

    .line 190
    const v4, 0x7f0a04cb

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 188
    add-int v6, v3, v4

    .line 191
    .local v6, "divider_inset_size":I
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 192
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 193
    .local v2, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 178
    .end local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "divider_inset_size":I
    .end local v16    # "resources":Landroid/content/res/Resources;
    :cond_5
    const v3, 0x7f0b0a60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setTitle(I)V

    goto :goto_4

    .line 195
    .restart local v6    # "divider_inset_size":I
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :cond_6
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 196
    .restart local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 208
    .end local v2    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "divider_inset_size":I
    .end local v10    # "actionBar":Landroid/app/ActionBar;
    .end local v16    # "resources":Landroid/content/res/Resources;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    const v5, 0x7f040168

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckedTextView;

    .line 209
    .restart local v17    # "textView":Landroid/widget/CheckedTextView;
    const-string/jumbo v3, "SelectPatternDialog"

    const-string/jumbo v4, "list_item_with_radiobox"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 256
    .end local v17    # "textView":Landroid/widget/CheckedTextView;
    :cond_8
    const-string/jumbo v3, "SelectPatternDialog"

    const-string/jumbo v4, "onCreate() positoin : -1"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v9, 0x7f0b0fee

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 303
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f110252

    if-ne v0, v1, :cond_3

    move-object v7, p3

    .line 304
    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 306
    .local v7, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateContextMenu : info.position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", getCurrentSelection() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateContextMenu : mAddPos : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateContextMenu : From Contact : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_0

    .line 310
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "onCreateContextMenu : Noting to add on Default and pre installed pattern"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 312
    :cond_0
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    if-ne v0, v1, :cond_1

    .line 314
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "onCreateContextMenu : Noting to add on Create item"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 316
    :cond_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    :cond_2
    invoke-interface {p1, v4, v5, v4, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 326
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, "c":Landroid/database/Cursor;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 328
    const-string/jumbo v0, "vibration_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 329
    .local v8, "menu_title":Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v8    # "menu_title":Ljava/lang/String;
    :cond_3
    return-void

    .line 321
    .restart local v7    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_4
    const/4 v0, 0x1

    const v1, 0x7f0b1715

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 322
    invoke-interface {p1, v4, v5, v4, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 446
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 449
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 442
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 364
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick() : position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Add position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 367
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 368
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "onItemClick() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iput p3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, "temp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 373
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 375
    .local v9, "pattern":I
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v2, v3, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 378
    .end local v9    # "pattern":I
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    .line 382
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    return-void

    .line 384
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v10    # "temp":Ljava/lang/String;
    :cond_2
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    if-ne v0, v1, :cond_4

    .line 386
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 387
    .local v7, "i":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.personalvibration.PersonalVibration"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    const-string/jumbo v0, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const/high16 v0, 0x2000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->startActivity(Landroid/content/Intent;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 394
    return-void

    .line 397
    .end local v7    # "i":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 398
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 397
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 399
    .restart local v6    # "c":Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 401
    .local v8, "index":I
    const-string/jumbo v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 402
    .restart local v9    # "pattern":I
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v2, v3, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 405
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    if-ne v0, p3, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    if-eqz v0, :cond_5

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFlag:Z

    .line 410
    invoke-static {p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 411
    invoke-direct {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    .line 415
    :cond_5
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    if-eq v0, p3, :cond_6

    .line 417
    invoke-static {p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 418
    invoke-direct {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->PositiveButtonClick()V

    .line 422
    :cond_6
    iput p3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOlderPosition:I

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 425
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "VIBP"

    sget-object v2, Lcom/android/settings/personalvibration/SelectPatternDialog;->LOGGING_EXTRA:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 695
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 696
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 699
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 700
    const-string/jumbo v0, "SelectPatternDialog"

    const-string/jumbo v1, "onItemSelected() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, "temp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 704
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const-string/jumbo v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 706
    .local v8, "pattern":I
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 709
    .end local v8    # "pattern":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 710
    return-void

    .line 711
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "temp":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, p3

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAddPos:I

    if-ne v0, v1, :cond_2

    .line 712
    return-void

    .line 714
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 715
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 714
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 716
    .restart local v6    # "c":Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 717
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 718
    .local v7, "index":I
    const-string/jumbo v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 719
    .restart local v8    # "pattern":I
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    sget-object v1, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_CALL:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v2, v3, v1}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 721
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 722
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemSelected() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 611
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 616
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 617
    .local v2, "ret":Z
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    .line 619
    iget-boolean v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mSupportFolderType:Z

    if-eqz v3, :cond_3

    .line 620
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, "focusedView":Landroid/view/View;
    const/4 v1, 0x0

    .line 623
    .local v1, "focusedViewId":I
    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 627
    :cond_1
    const/16 v3, 0x13

    if-ne p1, v3, :cond_5

    const v3, 0x1020019

    if-eq v1, v3, :cond_2

    .line 628
    const v3, 0x102001a

    if-ne v1, v3, :cond_4

    .line 630
    :cond_2
    iget-object v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->doVibrate(I)V

    .line 637
    .end local v0    # "focusedView":Landroid/view/View;
    .end local v1    # "focusedViewId":I
    :cond_3
    :goto_0
    return v2

    .line 629
    .restart local v0    # "focusedView":Landroid/view/View;
    .restart local v1    # "focusedViewId":I
    :cond_4
    const v3, 0x102001b

    if-eq v1, v3, :cond_2

    .line 631
    :cond_5
    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 632
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/personalvibration/SelectPatternDialog;->doVibrate(I)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 745
    invoke-static {p0}, Lcom/android/settings/Utils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 749
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 725
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 601
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 603
    const/4 v0, 0x1

    return v0

    .line 606
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 298
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v2, "Vibrationpattern"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 534
    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->installContent()V

    .line 737
    return-void
.end method

.method showRenameDialog(I)Z
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 453
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showRenameDialog() position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 456
    .local v7, "c":Landroid/database/Cursor;
    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 457
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "vibration_pattern"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "c.getPosition() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const v0, 0x7f0401bc

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 463
    .local v11, "view":Landroid/view/View;
    const v0, 0x7f110510

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 464
    .local v6, "EditPattern":Landroid/widget/TextView;
    const-string/jumbo v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 465
    .local v8, "id":I
    const/16 v10, 0x1a

    .line 466
    .local v10, "maxLength":I
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 467
    .local v9, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string/jumbo v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string/jumbo v0, "vibration_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 469
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move-object v0, v6

    .line 470
    check-cast v0, Landroid/widget/EditText;

    new-array v1, v12, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 471
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 474
    iput-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 477
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 480
    new-instance v1, Lcom/android/settings/personalvibration/SelectPatternDialog$2;

    invoke-direct {v1, p0, v6, v8, v9}, Lcom/android/settings/personalvibration/SelectPatternDialog$2;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V

    const v2, 0x7f0b1189

    .line 477
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 498
    new-instance v1, Lcom/android/settings/personalvibration/SelectPatternDialog$3;

    invoke-direct {v1, p0, v9, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog$3;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    const v2, 0x7f0b107a

    .line 477
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 505
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 507
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    .line 508
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 509
    return v12
.end method
