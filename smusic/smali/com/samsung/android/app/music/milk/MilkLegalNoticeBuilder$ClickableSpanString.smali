.class final Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;
.super Landroid/text/style/ClickableSpan;
.source "MilkLegalNoticeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClickableSpanString"
.end annotation


# instance fields
.field private final mListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;->mListener:Landroid/view/View$OnClickListener;

    .line 124
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 129
    return-void
.end method
