.class Lcom/samsung/android/settings/multisound/AudioDeviceType$2;
.super Ljava/lang/Object;
.source "AudioDeviceType.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/multisound/AudioDeviceType;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/multisound/AudioDeviceType;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multisound_devicetype"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-wrap0(Lcom/samsung/android/settings/multisound/AudioDeviceType;I)Z

    .line 77
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 78
    const v2, 0x7f0f014f

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 77
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;->this$0:Lcom/samsung/android/settings/multisound/AudioDeviceType;

    invoke-static {v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->-wrap2(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    .line 80
    return v3
.end method
