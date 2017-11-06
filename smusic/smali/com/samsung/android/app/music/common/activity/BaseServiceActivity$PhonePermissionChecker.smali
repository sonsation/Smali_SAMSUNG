.class Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "BaseServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonePermissionChecker"
.end annotation


# instance fields
.field private final mPhonePermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;)V
    .locals 4

    .prologue
    .line 606
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;->this$0:Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 607
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    .line 608
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->newPermissionManager(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;->mPhonePermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 609
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 613
    const-string v0, "com.samsung.android.app.music.core.state.REQUIRE_READ_PHONE_PERMISSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity$PhonePermissionChecker;->mPhonePermissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions()V

    .line 616
    :cond_0
    return-void
.end method
