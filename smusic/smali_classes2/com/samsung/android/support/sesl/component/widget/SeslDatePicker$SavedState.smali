.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SeslDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mListPosition:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1270
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    .line 1226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    .line 1227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMinDate:J

    .line 1229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMaxDate:J

    .line 1230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mListPosition:I

    .line 1231
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;

    .prologue
    .line 1198
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIJJI)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "listPosition"    # I

    .prologue
    .line 1211
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1212
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    .line 1213
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    .line 1214
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    .line 1215
    iput-wide p5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMinDate:J

    .line 1216
    iput-wide p7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMaxDate:J

    .line 1217
    iput p9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mListPosition:I

    .line 1218
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;)V
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # J
    .param p7, "x5"    # J
    .param p9, "x6"    # I
    .param p10, "x7"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;

    .prologue
    .line 1198
    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJI)V

    return-void
.end method


# virtual methods
.method public getListPosition()I
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mListPosition:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 1261
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 1257
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .prologue
    .line 1253
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1235
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1236
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1240
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1241
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    return-void
.end method
