.class Lcom/samsung/android/settings/display/AppListView$ActivityEntry;
.super Ljava/lang/Object;
.source "AppListView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AppListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/android/settings/display/AppListView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mLabel:Ljava/lang/String;

.field public final mNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "num"    # I

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mLabel:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 178
    iput p3, p0, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mNumber:I

    .line 175
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/settings/display/AppListView$ActivityEntry;)I
    .locals 4
    .param p1, "entry"    # Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    .prologue
    .line 183
    iget v0, p0, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mNumber:I

    int-to-long v0, v0

    iget v2, p1, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mNumber:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 182
    check-cast p1, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->compareTo(Lcom/samsung/android/settings/display/AppListView$ActivityEntry;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/android/settings/display/AppListView$ActivityEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
