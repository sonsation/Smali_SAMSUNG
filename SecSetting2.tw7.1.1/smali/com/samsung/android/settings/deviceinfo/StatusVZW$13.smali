.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$13;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->createImsService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$13;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    .prologue
    .line 2016
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$13;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->-set3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    .line 2021
    return-void
.end method
