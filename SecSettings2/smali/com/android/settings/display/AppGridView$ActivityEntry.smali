.class Lcom/android/settings/display/AppGridView$ActivityEntry;
.super Ljava/lang/Object;
.source "AppGridView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
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
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mLabel:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 156
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I
    .locals 2
    .param p1, "entry"    # Lcom/android/settings/display/AppGridView$ActivityEntry;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/display/AppGridView$ActivityEntry;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 162
    check-cast p1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    .end local p1    # "entry":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView$ActivityEntry;->compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mLabel:Ljava/lang/String;

    return-object v0
.end method
