.class Lcom/samsung/android/settings/nearby/NearbyEnabler$6;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/nearby/NearbyEnabler;

    .prologue
    .line 977
    iput-object p1, p0, Lcom/samsung/android/settings/nearby/NearbyEnabler$6;->this$0:Lcom/samsung/android/settings/nearby/NearbyEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 979
    const-string/jumbo v0, "NearbyEnabler"

    const-string/jumbo v1, "requestWifiSettingPopup"

    .line 980
    const-string/jumbo v2, "Wifi AlertDialog Select : cancel"

    .line 979
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    return-void
.end method
