.class Lcom/android/settings/DeviceInfoSettings$6;
.super Ljava/lang/Object;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceInfoSettings;->InitSecAddtionalPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DeviceInfoSettings;

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings$6;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->showNtcApprovalInfo(Landroid/app/Activity;)V

    .line 1313
    const/4 v0, 0x0

    return v0
.end method