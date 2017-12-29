.class final Lcom/android/settings/AppListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference$SavedState;
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
        "Lcom/android/settings/AppListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 419
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 420
    .local v2, "value":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 421
    .local v4, "showItemNone":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 422
    .local v5, "useComponent":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AppListPreference$SavedState$1;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    .line 423
    .local v6, "superState":Landroid/os/Parcelable;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 425
    .local v3, "summaries":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/settings/AppListPreference$SavedState;

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZLandroid/os/Parcelable;)V

    return-object v0

    .line 420
    .end local v3    # "summaries":[Ljava/lang/CharSequence;
    .end local v4    # "showItemNone":Z
    .end local v5    # "useComponent":Z
    .end local v6    # "superState":Landroid/os/Parcelable;
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "showItemNone":Z
    goto :goto_0

    .line 421
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useComponent":Z
    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/AppListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/AppListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 430
    new-array v0, p1, [Lcom/android/settings/AppListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcom/android/settings/AppListPreference$SavedState$1;->newArray(I)[Lcom/android/settings/AppListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
