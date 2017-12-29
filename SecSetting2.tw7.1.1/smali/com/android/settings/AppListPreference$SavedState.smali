.class Lcom/android/settings/AppListPreference$SavedState;
.super Ljava/lang/Object;
.source "AppListPreference.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppListPreference$SavedState$1;
    }
.end annotation


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/AppListPreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final entryValues:[Ljava/lang/CharSequence;

.field public final showItemNone:Z

.field public final summaries:[Ljava/lang/CharSequence;

.field public final superState:Landroid/os/Parcelable;

.field public final useComponent:Z

.field public final value:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/android/settings/AppListPreference$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/AppListPreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/AppListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 374
    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Parcelable;)V
    .locals 7
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "showItemNone"    # Z
    .param p5, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 386
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/AppListPreference$SavedState;-><init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZLandroid/os/Parcelable;)V

    .line 385
    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZZLandroid/os/Parcelable;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "summaries"    # [Ljava/lang/CharSequence;
    .param p4, "showItemNone"    # Z
    .param p5, "useComponent"    # Z
    .param p6, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    .line 392
    iput-object p2, p0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    .line 393
    iput-boolean p4, p0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    .line 394
    iput-boolean p5, p0, Lcom/android/settings/AppListPreference$SavedState;->useComponent:Z

    .line 395
    iput-object p6, p0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    .line 396
    iput-object p3, p0, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    .line 390
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->value:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 409
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference$SavedState;->showItemNone:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-boolean v0, p0, Lcom/android/settings/AppListPreference$SavedState;->useComponent:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->superState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/AppListPreference$SavedState;->summaries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 406
    return-void

    :cond_0
    move v0, v2

    .line 409
    goto :goto_0

    :cond_1
    move v1, v2

    .line 410
    goto :goto_1
.end method
