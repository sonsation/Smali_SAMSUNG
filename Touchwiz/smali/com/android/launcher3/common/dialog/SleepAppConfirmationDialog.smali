.class public Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "SleepAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final SLEEP_APP_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SleepAppConfirmDialog"

.field private static final sFragmentTag:Ljava/lang/String; = "SleepAppConfirm"

.field private static sPackageName:Ljava/lang/String;

.field private static sUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->SLEEP_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createAndShow(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)V
    .locals 3
    .param p0, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sUserId:Ljava/lang/String;

    .line 33
    sput-object p2, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;

    invoke-direct {v0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;-><init>()V

    .line 35
    .local v0, "f":Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SleepAppConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 43
    const-string v1, "SleepAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 44
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 48
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 39
    const-string v0, "SleepAppConfirm"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 63
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "SleepAppConfirmDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting sleep app... : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "extras"

    aput-object v0, v2, v11

    .line 69
    .local v2, "Columns":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/AppFreezerUtils;->isSupportUID(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v3, "uid = ? AND package_name = ?"

    .line 71
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sUserId:Ljava/lang/String;

    aput-object v0, v4, v11

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    aput-object v0, v4, v12

    .line 77
    .local v4, "selectionArg":[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 79
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->SLEEP_APP_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_2

    .line 82
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "extras"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->SLEEP_APP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v9, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "POLICY_NAME"

    const-string v1, "applocker"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v0, "PACKAGE_NAME"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 97
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    .end local v2    # "Columns":[Ljava/lang/String;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 73
    .restart local v2    # "Columns":[Ljava/lang/String;
    :cond_1
    const-string v3, "package_name = ?"

    .line 74
    .restart local v3    # "whereClause":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    sget-object v0, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->sPackageName:Ljava/lang/String;

    aput-object v0, v4, v11

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_0

    .line 100
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/SleepAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 54
    .local v0, "c":Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900ab

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090081

    .line 55
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090031

    .line 56
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    .local v1, "dialog":Landroid/app/Dialog;
    return-object v1
.end method
