.class Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$8;
.super Ljava/lang/Object;
.source "EditStationFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;->getEditTextFilterEmoji()Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment$8;->this$0:Lcom/samsung/android/app/music/milk/radio/mystations/editstation/fragment/EditStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 844
    move v0, p2

    .local v0, "index":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 845
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v1

    .line 846
    .local v1, "type":I
    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    .line 847
    const-string v2, ""

    .line 850
    .end local v1    # "type":I
    :goto_1
    return-object v2

    .line 844
    .restart local v1    # "type":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 850
    .end local v1    # "type":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
