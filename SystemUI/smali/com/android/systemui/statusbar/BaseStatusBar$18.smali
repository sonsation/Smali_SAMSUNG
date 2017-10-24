.class Lcom/android/systemui/statusbar/BaseStatusBar$18;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->bindBlockGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUidF:I

.field final synthetic val$guts:Lcom/android/systemui/statusbar/BlockNotificationGuts;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BlockNotificationGuts;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "val$guts"    # Lcom/android/systemui/statusbar/BlockNotificationGuts;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$appUidF"    # I

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$guts:Lcom/android/systemui/statusbar/BlockNotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$appUidF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/16 v1, 0xcd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$guts:Lcom/android/systemui/statusbar/BlockNotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BlockNotificationGuts;->resetFalsingCheck()V

    .line 1727
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$18;->val$appUidF:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V

    .line 1724
    return-void
.end method
