.class Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;
.super Landroid/database/ContentObserver;
.source "DisplayTemperatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/DisplayTemperatureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/DisplayTemperatureSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$4;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->finish()V

    .line 79
    return-void
.end method