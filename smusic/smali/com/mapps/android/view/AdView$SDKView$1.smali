.class Lcom/mapps/android/view/AdView$SDKView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView;-><init>(Lcom/mapps/android/view/AdView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$SDKView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$1;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    .line 1939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$1;->this$1:Lcom/mapps/android/view/AdView$SDKView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1943
    new-instance v0, Lcom/mapps/android/view/AdView$SDKView$1$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdView$SDKView$1$1;-><init>(Lcom/mapps/android/view/AdView$SDKView$1;)V

    invoke-static {v0}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V

    .line 1965
    return-void
.end method
