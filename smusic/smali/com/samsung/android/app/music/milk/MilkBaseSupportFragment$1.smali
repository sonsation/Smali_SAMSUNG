.class Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment$1;
.super Ljava/lang/Object;
.source "MilkBaseSupportFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrimaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;

    iput p1, v0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColor:I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment$1;->this$0:Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->primaryColorChanged(I)V

    .line 176
    return-void
.end method
