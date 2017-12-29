.class Lcom/android/server/cover/CoverTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverTestModeUtils;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverTestModeUtils;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-static {v1}, Lcom/android/server/cover/CoverTestModeUtils;->-wrap0(Lcom/android/server/cover/CoverTestModeUtils;)I

    move-result v0

    .line 55
    .local v0, "testMode":I
    iget-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-static {v1, v0}, Lcom/android/server/cover/CoverTestModeUtils;->-wrap1(Lcom/android/server/cover/CoverTestModeUtils;I)V

    .line 53
    return-void
.end method
