.class Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;
.super Landroid/database/ContentObserver;
.source "PanicModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/PanicModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/PanicModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/PanicModeSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/safetycare/PanicModeSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;->this$0:Lcom/samsung/android/settings/safetycare/PanicModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/PanicModeSettings$1;->this$0:Lcom/samsung/android/settings/safetycare/PanicModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/safetycare/PanicModeSettings;->-wrap0(Lcom/samsung/android/settings/safetycare/PanicModeSettings;)V

    .line 63
    return-void
.end method
