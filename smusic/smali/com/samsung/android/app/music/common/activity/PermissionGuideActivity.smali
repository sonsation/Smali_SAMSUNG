.class public Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "PermissionGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;
    }
.end annotation


# static fields
.field public static final EXTRA_GRANT_RESULT:Ljava/lang/String; = "extra_grant_result"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "extra_permissions"

.field public static final KEY_REQUESTED_PERMISSION:Ljava/lang/String; = "key_requested_permission"


# instance fields
.field private mIsRequestedPermission:Z

.field private final mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

.field private mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

.field private final mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissions:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mIsRequestedPermission:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mIsRequestedPermission:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    return-object v0
.end method

.method private setRequiredPermissionItem(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;I)V
    .locals 3
    .param p1, "permission"    # Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;
    .param p2, "index"    # I

    .prologue
    .line 101
    iget v1, p1, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->layout:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    if-nez p2, :cond_1

    .line 106
    const v1, 0x7f120248

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_1
    const v1, 0x7f120233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    const v1, 0x7f1200b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    const v1, 0x7f120173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p1, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;->description:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f0401e4

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 42
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    const-string v3, "key_requested_permission"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mIsRequestedPermission:Z

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mOnPermissionResultListener:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-string v6, "android.permission.READ_PHONE_STATE"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "android.permission.GET_ACCOUNTS"

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->newPermissionManager(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 54
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissions:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;

    const v5, 0x7f1204f3

    const v6, 0x7f02005c

    const v7, 0x7f0a0437

    const v8, 0x7f0a0434

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissions:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;

    const v5, 0x7f1204f4

    const v6, 0x7f02005b

    const v7, 0x7f0a0430

    const v8, 0x7f0a0432

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissions:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;

    const v5, 0x7f1204f5

    const v6, 0x7f02005a

    const v7, 0x7f0a0431

    const v8, 0x7f0a0433

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mPermissions:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->setRequiredPermissionItem(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$Permission;I)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_2
    const v3, 0x7f1204f0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 68
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_3

    .line 69
    new-instance v3, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_3
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const-string v0, "key_requested_permission"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->mIsRequestedPermission:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method
