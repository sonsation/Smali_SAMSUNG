.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$2;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1858
    :try_start_0
    const-string/jumbo v2, "edmnativehelperservice"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    :goto_0
    return-void

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    .line 1859
    .end local v0    # "e":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 1860
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
