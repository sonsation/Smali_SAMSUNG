.class public Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BixbyRecentsViewHandler"
.end annotation


# instance fields
.field lastErrorNo:I

.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsView$BixbyRecentsViewHandler;->lastErrorNo:I

    .line 1365
    return-void
.end method
