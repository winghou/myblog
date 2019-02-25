package com.bbk.blog;

import lombok.ToString;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/**
 * @author ldd
 * @desc
 * @create 2018-11-17 21:55
 **/
public class OtherTest {
    @Test
    public void printUserDir() {
        System.out.println(System.getProperty("user.dir"));
    }

    @Test
    public void test1() {
        String a = "a,b,";
        String[] split = a.split(",");
        System.out.println(Arrays.toString(split));
    }

    @Test
    public void printRe() {
        int a = 3;
        for (int i = 0; i <= a; i++) {
            if (i == 0 || i == a) {
                for (int j = 0; j <= a; j++) {
                    System.out.print("*");
                }
                System.out.print("\n");
            } else {
                for (int j = 0; j <= a; j++) {
                    if (j == 0 || j == a) {
                        System.out.print("*");
                    } else {
                        System.out.print(" ");
                    }
                }
                System.out.print("\n");
            }
        }
    }

    @Test
    public void test2() {
        int[] nums = {-2, 0, 3, -1, 4, 0, 3, 4, 1, 1, 1, -3, -5, 4, 0};
        Arrays.sort(nums);
        List<List<Integer>> list = new ArrayList<>();
        for (int i = 0; i < nums.length - 2; ) {
            int j = i + 1, r = nums.length - 1;
            while (j < r) {
                if (nums[i] + nums[j] + nums[r] < 0) {
                    j++;
                    while (j < r && nums[j - 1] == nums[j]) {
                        j++;
                    }
                } else if (nums[i] + nums[j] + nums[r] > 0) {
                    r--;
                    while (j < r && nums[r + 1] == nums[r]) {
                        r--;
                    }
                } else {
                    List<Integer> l = new ArrayList<>();
                    l.add(nums[i]);
                    l.add(nums[j]);
                    l.add(nums[r]);
                    list.add(l);
                    j++;
                    while (j < r && nums[j - 1] == nums[j]) {
                        j++;
                    }
                    r--;
                    while (j < r && nums[r + 1] == nums[r]) {
                        r--;
                    }
                }
            }
            i++;
            while (i < nums.length - 2 && nums[i] == nums[i - 1]) {
                i++;
            }
        }
        System.out.println(list.toString());
    }

    @Test
    public void Test3() {
        int[] nums = {-2, 0, 3, -1, 4, 0, 3, 4, 1, 1, 1, -3, -5, 4, 0};
        List<List<Integer>> result = new LinkedList<>();

        if (nums != null && nums.length > 2) {
            // 先对数组进行排序
            Arrays.sort(nums);
            // i表示假设取第i个数作为结果
            for (int i = 0; i < nums.length - 2; ) {
                // 第二个数可能的起始位置
                int j = i + 1;
                // 第三个数可能是结束位置
                int k = nums.length - 1;

                while (j < k) {
                    // 如果找到满足条件的解
                    if (nums[j] + nums[k] == -nums[i]) {
                        // 将结果添加到结果含集中
                        List<Integer> list = new ArrayList<>(3);
                        list.add(nums[i]);
                        list.add(nums[j]);
                        list.add(nums[k]);
                        result.add(list);

                        // 移动到下一个位置，找下一组解
                        k--;
                        j++;

                        // 从左向右找第一个与之前处理的数不同的数的下标
                        while (j < k && nums[j] == nums[j - 1]) {
                            j++;
                        }
                        // 从右向左找第一个与之前处理的数不同的数的下标
                        while (j < k && nums[k] == nums[k + 1]) {
                            k--;
                        }
                    }
                    // 和大于0
                    else if (nums[j] + nums[k] > -nums[i]) {
                        k--;
                        // 从右向左找第一个与之前处理的数不同的数的下标
                        while (j < k && nums[k] == nums[k + 1]) {
                            k--;
                        }
                    }
                    // 和小于0
                    else {
                        j++;
                        // 从左向右找第一个与之前处理的数不同的数的下标
                        while (j < k && nums[j] == nums[j - 1]) {
                            j++;
                        }
                    }
                }

                // 指向下一个要处理的数
                i++;
                // 从左向右找第一个与之前处理的数不同的数的下标
                while (i < nums.length - 2 && nums[i] == nums[i - 1]) {
                    i++;
                }
            }
        }
        System.out.println(result.toString());
    }

    @Test
    public void Test4() {
        int target = 1;
        int[] nums = {0, 2, 1, -3};
        Arrays.sort(nums);
        int close = nums[0] + nums[1] + nums[2];
        for (int i = 0; i < nums.length - 2; i++) {
            int j = i + 1, k = nums.length - 1;
            while (j < k) {
                int three = nums[i] + nums[j] + nums[k];
                if (Math.abs(three - target) < Math.abs(close - target)) {
                    close = three;

                }
                if (three > target) {
                    k--;
                } else if (three < target) {
                    j++;
                } else {
                    System.out.println(close);
                }

            }
        }
        System.out.println(close);
    }

    @Test
    public void Test5() {
        int[] nums = {1, 0, -1, 0, -2, 2};
        int target = 0;
        List<List<Integer>> list = new ArrayList<>();
        Arrays.sort(nums);
        for (int i = 0; i < nums.length - 3; ) {
            for (int j = i + 1; j < nums.length - 2; ) {
                int k = j + 1, l = nums.length - 1;
                while (k < l) {
                    int four = nums[i] + nums[j] + nums[k] + nums[l];
                    if (four > target) {
                        l--;
                        while (k < l && nums[l] == nums[l + 1]) {
                            l--;
                        }
                    } else if (four < target) {
                        k++;
                        while (k < l && nums[k] == nums[k - 1]) {
                            k++;
                        }
                    } else {
                        list.add(Arrays.asList(nums[i], nums[j], nums[k], nums[l]));
                        l--;
                        while (k < l && nums[l] == nums[l + 1]) {
                            l--;
                        }
                        k++;
                        while (k < l && nums[k] == nums[k - 1]) {
                            k++;
                        }



                    }
                }
                j++;
                while (j < nums.length - 2 && nums[j] == nums[j - 1]) {
                    j++;
                }

            }
            i++;
            while (i < nums.length - 2 && nums[i] == nums[i - 1]) {
                i++;
            }
        }
        System.out.println(list.toString());
    }
}
