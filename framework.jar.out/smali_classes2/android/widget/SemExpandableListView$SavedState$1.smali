.class final Landroid/widget/SemExpandableListView$SavedState$1;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemExpandableListView$SavedState;
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
        "Landroid/widget/SemExpandableListView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemExpandableListView$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2620
    new-instance v0, Landroid/widget/SemExpandableListView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/SemExpandableListView$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/SemExpandableListView$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2619
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/SemExpandableListView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/SemExpandableListView$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2624
    new-array v0, p1, [Landroid/widget/SemExpandableListView$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2623
    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView$SavedState$1;->newArray(I)[Landroid/widget/SemExpandableListView$SavedState;

    move-result-object v0

    return-object v0
.end method
