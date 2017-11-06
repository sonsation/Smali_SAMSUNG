.class Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;
.super Ljava/lang/Object;
.source "DeviceManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;->showDeviceDeregisterLimitedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "DeviceManagementActivity"

    const-string v1, "Samsung Members supported"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/help/ContactUsHelper;->launchContactUs(Landroid/app/Activity;)Z

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    const-string v0, "DeviceManagementActivity"

    const-string v1, "Samsung Members not supported"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity$3;->this$0:Lcom/samsung/android/app/music/common/settings/DeviceManagementActivity;

    sget-object v1, Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;->CONTACT_US:Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/help/MuseHelper;->launchMuse(Landroid/app/Activity;Lcom/samsung/android/app/music/common/help/MuseHelper$MuseUriType;)V

    goto :goto_0
.end method
