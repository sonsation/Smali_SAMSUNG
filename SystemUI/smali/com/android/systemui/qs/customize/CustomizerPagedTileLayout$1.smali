.class Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;
.super Ljava/lang/Object;
.source "CustomizerPagedTileLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout$1;->this$0:Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->-wrap0(Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;)V

    .line 435
    return-void
.end method
