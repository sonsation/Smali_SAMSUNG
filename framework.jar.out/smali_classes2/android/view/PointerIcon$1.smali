.class final Landroid/view/PointerIcon$1;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/view/PointerIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 805
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 806
    .local v6, "type":I
    if-nez v6, :cond_0

    .line 807
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7

    .line 810
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 811
    .local v5, "systemIconResourceId":I
    if-eqz v5, :cond_1

    .line 812
    new-instance v4, Landroid/view/PointerIcon;

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/view/PointerIcon;-><init>(ILandroid/view/PointerIcon;)V

    .line 813
    .local v4, "icon":Landroid/view/PointerIcon;
    invoke-static {v4, v5}, Landroid/view/PointerIcon;->-set0(Landroid/view/PointerIcon;I)I

    .line 814
    return-object v4

    .line 817
    .end local v4    # "icon":Landroid/view/PointerIcon;
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 818
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 819
    .local v2, "hotSpotX":F
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 820
    .local v3, "hotSpotY":F
    const/16 v7, 0x4e20

    if-ne v6, v7, :cond_2

    .line 821
    invoke-static {v0, v2, v3}, Landroid/view/PointerIcon;->-wrap1(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7

    .line 822
    :cond_2
    const/16 v7, 0x2774

    if-eq v6, v7, :cond_3

    const/16 v7, 0x4e36

    if-ne v6, v7, :cond_4

    .line 823
    :cond_3
    invoke-static {v0, v2, v3, v6}, Landroid/view/PointerIcon;->-wrap0(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7

    .line 825
    :cond_4
    invoke-static {v0, v2, v3}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 827
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "hotSpotX":F
    .end local v3    # "hotSpotY":F
    .end local v5    # "systemIconResourceId":I
    .end local v6    # "type":I
    :catch_0
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 829
    invoke-static {}, Landroid/view/PointerIcon;->getNullIcon()Landroid/view/PointerIcon;

    move-result-object v7

    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 803
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/PointerIcon;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 834
    new-array v0, p1, [Landroid/view/PointerIcon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Landroid/view/PointerIcon$1;->newArray(I)[Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method
