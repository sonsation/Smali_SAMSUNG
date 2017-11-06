.class Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;
.super Ljava/lang/Object;
.source "MilkDrmLicenseCheck.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/drm/IDrmLicenseChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->checkDRMLicense(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;

.field final synthetic val$messenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;->val$messenger:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkDrmLicenceDone(Z)V
    .locals 2
    .param p1, "canGetDrmLicense"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver$1;->val$messenger:Landroid/os/Messenger;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;->access$100(Lcom/samsung/android/app/music/service/drm/MilkDrmLicenseCheck$ServiceCommandReceiver;Landroid/os/Messenger;Z)V

    .line 159
    return-void
.end method
