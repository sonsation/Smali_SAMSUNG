.class Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;
.super Landroid/database/ContentObserver;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherCityAddObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 1

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    .line 537
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 538
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;->this$0:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-static {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->access$700(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    .line 543
    return-void
.end method
