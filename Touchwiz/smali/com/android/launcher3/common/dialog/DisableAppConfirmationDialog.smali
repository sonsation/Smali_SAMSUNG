.class public Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DisableAppConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DisableAppConfirmDialog"

.field private static final sFragmentTag:Ljava/lang/String; = "DisableAppConfirm"

.field private static sIcon:Landroid/graphics/Bitmap;

.field private static sPackage:Ljava/lang/String;

.field private static sPackageLabel:Ljava/lang/String;

.field private static sPostRunnable:Ljava/lang/Runnable;

.field private static sUserID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPostRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static createAndShow(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "manager"    # Landroid/app/FragmentManager;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/16 v6, 0x90

    .line 47
    invoke-static {p5}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p3, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance v3, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;

    invoke-direct {v3}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;-><init>()V

    .line 52
    .local v3, "dialog":Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "package"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v4, "label"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "android.intent.extra.USER"

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-static {p4, p0, v6, v6}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 58
    .local v1, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v2, "bs":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x32

    invoke-virtual {v1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 60
    const-string v4, "icon"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 62
    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const-string v4, "DisableAppConfirm"

    invoke-virtual {v3, p5, v4}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 64
    sput-object p6, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPostRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public static dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 80
    const-string v1, "DisableAppConfirm"

    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 81
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 83
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 85
    :cond_0
    return-void
.end method

.method public static dismissIfNeeded(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 72
    sget v2, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sUserID:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    .line 73
    .local v1, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    sget-object v2, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackage:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/android/launcher3/LauncherModel;->isValidPackage(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 75
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {v0, p1}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    .line 77
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 68
    if-eqz p0, :cond_0

    const-string v0, "DisableAppConfirm"

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

.method public static showIfNeeded(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 88
    const-string v1, "DisableAppConfirm"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 89
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 90
    const-string v1, "DisableAppConfirm"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 144
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 146
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sUserID:I

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 147
    const-string v3, "android.content.pm.IPackageManager$Stub"

    invoke-static {v3}, Lcom/android/launcher3/util/Reflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 148
    .local v13, "iPackageManagerStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Lcom/android/launcher3/util/Reflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 149
    .local v2, "ServiceManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v13, :cond_0

    if-eqz v2, :cond_0

    .line 150
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Lcom/android/launcher3/util/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 152
    .local v9, "asInterfaceMethod":Ljava/lang/reflect/Method;
    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher3/util/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 154
    .local v11, "getServiceMethod":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_0

    if-eqz v11, :cond_0

    .line 155
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v17, "package"

    aput-object v17, v7, v8

    .line 156
    invoke-static {v6, v11, v7}, Lcom/android/launcher3/util/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 155
    invoke-static {v3, v9, v4}, Lcom/android/launcher3/util/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 157
    .local v12, "iPackageManager":Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 158
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v16, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v16, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v16, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v16, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v16, v3

    .line 159
    .local v16, "types":[Ljava/lang/Class;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setApplicationEnabledSetting"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0, v5}, Lcom/android/launcher3/util/Reflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 161
    .local v15, "setApplicationEnabledSetting":Ljava/lang/reflect/Method;
    if-eqz v15, :cond_0

    .line 162
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackage:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget v5, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sUserID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, ""

    aput-object v5, v3, v4

    .line 162
    invoke-static {v12, v15, v3}, Lcom/android/launcher3/util/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "HSDS"

    sget-object v5, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackage:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 185
    .end local v2    # "ServiceManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "asInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v11    # "getServiceMethod":Ljava/lang/reflect/Method;
    .end local v12    # "iPackageManager":Ljava/lang/Object;
    .end local v13    # "iPackageManagerStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "setApplicationEnabledSetting":Ljava/lang/reflect/Method;
    .end local v16    # "types":[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 171
    .local v14, "pkgMgr":Landroid/content/pm/PackageManager;
    if-eqz v14, :cond_2

    .line 172
    sget-object v3, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackage:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 173
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "HSDS"

    sget-object v5, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackage:Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v14    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v10

    .line 179
    .local v10, "e":Ljava/lang/Exception;
    const-string v3, "DisableAppConfirmDialog"

    const-string v4, "Problem disabling package."

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Disabling has been failed"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 175
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "pkgMgr":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    const-string v3, "DisableAppConfirmDialog"

    const-string v4, "Couldn\'t get package manager."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackage:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackageLabel:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sUserID:I

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 101
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sIcon:Landroid/graphics/Bitmap;

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 107
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sIcon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackageLabel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const v6, 0x7f0900a2

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    const v6, 0x7f090031

    invoke-virtual {v0, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 114
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getKnoxContainerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, "knoxName":Ljava/lang/String;
    const v6, 0x7f090035

    new-array v7, v8, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackageLabel:Ljava/lang/String;

    aput-object v8, v7, v9

    aput-object v5, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .end local v5    # "knoxName":Ljava/lang/String;
    .local v3, "disable_massage":Ljava/lang/String;
    :goto_0
    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_0

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u200f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 129
    .local v2, "dialog":Landroid/app/Dialog;
    return-object v2

    .line 117
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "disable_massage":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isVZWModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    const v6, 0x7f090036

    new-array v7, v10, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackageLabel:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "disable_massage":Ljava/lang/String;
    goto :goto_0

    .line 120
    .end local v3    # "disable_massage":Ljava/lang/String;
    :cond_2
    const v6, 0x7f090034

    new-array v7, v8, [Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackageLabel:Ljava/lang/String;

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPackageLabel:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "disable_massage":Ljava/lang/String;
    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 136
    sget-object v0, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPostRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPostRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->sPostRunnable:Ljava/lang/Runnable;

    .line 140
    :cond_0
    return-void
.end method
