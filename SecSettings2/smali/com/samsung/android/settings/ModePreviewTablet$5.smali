.class Lcom/samsung/android/settings/ModePreviewTablet$5;
.super Landroid/database/ContentObserver;
.source "ModePreviewTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ModePreviewTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ModePreviewTablet;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/ModePreviewTablet;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewTablet$5;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$5;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->updateTemperatureSettingsState()V

    .line 447
    return-void
.end method
