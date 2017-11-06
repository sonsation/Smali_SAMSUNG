.class public Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "PermissionCheckActivity.java"


# static fields
.field public static final ACTION_WRITE_STORAGE_PERMISSION_GRANTED:Ljava/lang/String; = "com.samsung.android.app.music.ACTION_WRITE_STORAGE_PERMISSION_GRANTED"

.field private static final EXTRA_PERMISSIONS:Ljava/lang/String; = "extra_required_permissions"

.field private static final PREVIOS_INTENT_TYPE:Ljava/lang/String; = "extra_previous_intent_type"

.field private static final PREVIOUS_RECEIVED_INTENT:Ljava/lang/String; = "extra_previous_received_intent"

.field private static final TAG:Ljava/lang/String; = "Permission"

.field private static final TYPE_ACTIVITY:I = 0x1

.field private static final TYPE_RECEIVER:I = 0x2


# instance fields
.field private final mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

.field private mPreviousIntent:Landroid/content/Intent;

.field private mPreviousIntentMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    .prologue
    .line 15
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->mPreviousIntentMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->broadcastWriteStoragePermissionGranted()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->mPreviousIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private broadcastWriteStoragePermissionGranted()V
    .locals 2

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.ACTION_WRITE_STORAGE_PERMISSION_GRANTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 62
    :goto_0
    return v1

    .line 54
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "extra_previous_received_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v2, "extra_required_permissions"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v2, "extra_previous_intent_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public static startPermissionActivity(Landroid/content/Context;[Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "previousIntent"    # Landroid/content/Intent;

    .prologue
    .line 67
    array-length v1, p1

    if-lez v1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_previous_received_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string v1, "extra_required_permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "extra_previous_intent_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    const/4 v1, 0x1

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_previous_received_intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->mPreviousIntent:Landroid/content/Intent;

    .line 40
    const-string v3, "extra_required_permissions"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "permissions":[Ljava/lang/String;
    const-string v3, "extra_previous_intent_type"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->mPreviousIntentMode:I

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v1

    .line 45
    .local v1, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    .line 46
    return-void
.end method
