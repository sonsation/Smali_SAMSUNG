.class Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "SeslCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;)V
    .locals 1

    .prologue
    .line 475
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$ChangeObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    .line 476
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 477
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter$ChangeObserver;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCursorAdapter;->onContentChanged()V

    .line 487
    return-void
.end method
