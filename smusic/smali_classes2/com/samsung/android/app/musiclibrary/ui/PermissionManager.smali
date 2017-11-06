.class public Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_PERMISSION_REQUESTED:Ljava/lang/String; = "key_permission_requested"

.field public static final REQUEST_CODE_REQUEST_PERMISSIONS:I = 0x64

.field private static final SUPPORT_PERMISSION:Z

.field private static final TAG:Ljava/lang/String; = "Permission"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mFinishWithoutPermissions:Z

.field private mGuideActivityClass:Ljava/lang/Class;

.field private final mIndex:I

.field private mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

.field private final mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsRequested:Z

.field private mRequestPermissionWithGuide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->SUPPORT_PERMISSION:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method varargs constructor <init>(ILandroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    .line 65
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mIndex:I

    .line 66
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 67
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mIndex:I

    .line 61
    return-void
.end method

.method private checkPermissions()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->extractNonGrantedPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "nonGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mFinishWithoutPermissions:Z

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 136
    .end local v0    # "nonGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 132
    .restart local v0    # "nonGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions(Ljava/util/List;)V

    goto :goto_0
.end method

.method private extractNonGrantedPermissions(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "nonGrantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private requestPermissions(Ljava/util/List;)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->wasDeniedPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 151
    invoke-virtual {v3, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 160
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->showStartManagePermissionDialog([Ljava/lang/String;)V

    .line 168
    :goto_1
    return-void

    .line 165
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissionsRequested:Z

    .line 166
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mIndex:I

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private setDeniedPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    return-void
.end method

.method private shouldShowPermissionGuide(Ljava/util/List;)Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 199
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->SUPPORT_PERMISSION:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mRequestPermissionWithGuide:Z

    if-nez v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v3

    .line 202
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, "neverAskAgainPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "permission":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 206
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->wasDeniedPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 209
    invoke-virtual {v5, v2}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 210
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v2    # "permission":Ljava/lang/String;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private showStartManagePermissionDialog([Ljava/lang/String;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 236
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 237
    .local v2, "fm":Landroid/app/FragmentManager;
    const-string/jumbo v3, "start_manager_permissions_activity_dialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 238
    .local v1, "fg":Landroid/app/Fragment;
    instance-of v3, v1, Landroid/app/DialogFragment;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/app/DialogFragment;

    .end local v1    # "fg":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->newInstance([Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    move-result-object v0

    .line 242
    .local v0, "dialogFg":Landroid/app/DialogFragment;
    const-string/jumbo v3, "start_manager_permissions_activity_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wasDeniedPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    const-string v2, "music_player_pref"

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public isAllGranted()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 253
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->SUPPORT_PERMISSION:Z

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 265
    .end local v0    # "permission":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isAllGranted([I)Z
    .locals 4
    .param p1, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    array-length v1, p1

    .line 270
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 271
    aget v2, p1, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 272
    const/4 v2, 0x0

    .line 275
    :goto_1
    return v2

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isGranted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 247
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->SUPPORT_PERMISSION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mActivity:Landroid/app/Activity;

    .line 248
    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    if-eqz p2, :cond_0

    .line 78
    const-string v0, "key_permission_requested"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissionsRequested:Z

    .line 80
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const-string v0, "key_permission_requested"

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissionsRequested:Z

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->SUPPORT_PERMISSION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissionsRequested:Z

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->shouldShowPermissionGuide(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mGuideActivityClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2714

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->checkPermissions()V

    goto :goto_0
.end method

.method onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissionsRequested:Z

    .line 172
    array-length v1, p1

    .line 173
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    aget v2, p2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 175
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setDeniedPermission(Ljava/lang/String;)V

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    if-eqz v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;->onPermissionResult([Ljava/lang/String;[I)V

    .line 181
    :cond_2
    return-void
.end method

.method public requestPermissions()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 140
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->SUPPORT_PERMISSION:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions(Ljava/util/List;)V

    .line 143
    :cond_0
    return-void
.end method

.method public setOnPermissionResultListener(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    .line 280
    return-void
.end method

.method public varargs setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;Ljava/lang/Class;Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "classGuideActivity"    # Ljava/lang/Class;
    .param p3, "requestPermissionWithGuide"    # Z
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 109
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mRequestPermissionWithGuide:Z

    .line 110
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mGuideActivityClass:Ljava/lang/Class;

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "permissions are already set. Cannot set anymore"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    .line 121
    return-void
.end method

.method public varargs setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;Ljava/lang/Class;Z[Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public varargs setPermissions(Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "finishWithoutPermissions"    # Z
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "permissions are already set. Cannot set anymore"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mPermissions:Ljava/util/List;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->mFinishWithoutPermissions:Z

    .line 100
    return-void
.end method
