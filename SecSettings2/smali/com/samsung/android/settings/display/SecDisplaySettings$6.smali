.class Lcom/samsung/android/settings/display/SecDisplaySettings$6;
.super Landroid/database/ContentObserver;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/SecDisplaySettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$6;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap14(Lcom/samsung/android/settings/display/SecDisplaySettings;)V

    .line 385
    :cond_0
    return-void
.end method
