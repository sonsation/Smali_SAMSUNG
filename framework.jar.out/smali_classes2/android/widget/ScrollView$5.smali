.class Landroid/widget/ScrollView$5;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ScrollView;

    .prologue
    .line 3207
    iput-object p1, p0, Landroid/widget/ScrollView$5;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3209
    iget-object v0, p0, Landroid/widget/ScrollView$5;->this$0:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/widget/ScrollView;->-wrap2(Landroid/widget/ScrollView;)V

    .line 3208
    return-void
.end method
