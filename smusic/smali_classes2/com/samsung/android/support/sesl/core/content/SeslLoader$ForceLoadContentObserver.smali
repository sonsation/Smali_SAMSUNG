.class public final Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "SeslLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/content/SeslLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/content/SeslLoader;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/content/SeslLoader;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    .prologue
    .line 55
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>.ForceLoadContentObserver;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>.ForceLoadContentObserver;"
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 66
    .local p0, "this":Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;, "Lcom/samsung/android/support/sesl/core/content/SeslLoader<TD;>.ForceLoadContentObserver;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/content/SeslLoader$ForceLoadContentObserver;->this$0:Lcom/samsung/android/support/sesl/core/content/SeslLoader;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/content/SeslLoader;->onContentChanged()V

    .line 67
    return-void
.end method
