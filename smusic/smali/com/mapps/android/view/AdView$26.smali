.class Lcom/mapps/android/view/AdView$26;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->setLoaction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$26;->this$0:Lcom/mapps/android/view/AdView;

    iput-boolean p2, p0, Lcom/mapps/android/view/AdView$26;->val$b:Z

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 727
    iget-boolean v1, p0, Lcom/mapps/android/view/AdView$26;->val$b:Z

    if-eqz v1, :cond_0

    const-string v0, "1"

    .line 728
    .local v0, "flag":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$26;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Loaction"

    const-string v4, "Loaction"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mapps/android/share/ShareUtil;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void

    .line 727
    .end local v0    # "flag":Ljava/lang/String;
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method