.class Lcom/android/launcher3/Launcher$12;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2392
    iput-object p1, p0, Lcom/android/launcher3/Launcher$12;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 2395
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$902(Z)Z

    .line 2396
    return-void
.end method
